
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_dev {TYPE_1__* pdev; } ;
struct fwnode_reference_args {struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct device_node {struct fwnode_handle fwnode; } ;
struct device {int fwnode; struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int ENXIO ;
 int SLEEP_TIME_INTERVAL ;
 int acpi_node_get_property_reference (int ,char*,int ,struct fwnode_reference_args*) ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dev_of_node (struct device*) ;
 int hns_dsaf_roce_reset (struct fwnode_handle*,int) ;
 scalar_t__ is_acpi_device_node (int ) ;
 int msleep (int ) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;

__attribute__((used)) static int hns_roce_v1_reset(struct hns_roce_dev *hr_dev, bool dereset)
{
 struct device_node *dsaf_node;
 struct device *dev = &hr_dev->pdev->dev;
 struct device_node *np = dev->of_node;
 struct fwnode_handle *fwnode;
 int ret;


 if (dev_of_node(dev)) {
  dsaf_node = of_parse_phandle(np, "dsaf-handle", 0);
  if (!dsaf_node) {
   dev_err(dev, "could not find dsaf-handle\n");
   return -EINVAL;
  }
  fwnode = &dsaf_node->fwnode;
 } else if (is_acpi_device_node(dev->fwnode)) {
  struct fwnode_reference_args args;

  ret = acpi_node_get_property_reference(dev->fwnode,
             "dsaf-handle", 0, &args);
  if (ret) {
   dev_err(dev, "could not find dsaf-handle\n");
   return ret;
  }
  fwnode = args.fwnode;
 } else {
  dev_err(dev, "cannot read data from DT or ACPI\n");
  return -ENXIO;
 }

 ret = hns_dsaf_roce_reset(fwnode, 0);
 if (ret)
  return ret;

 if (dereset) {
  msleep(SLEEP_TIME_INTERVAL);
  ret = hns_dsaf_roce_reset(fwnode, 1);
 }

 return ret;
}
