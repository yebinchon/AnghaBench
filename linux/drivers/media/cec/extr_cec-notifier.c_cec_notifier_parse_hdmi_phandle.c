
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int EPROBE_DEFER ;
 struct device* ERR_PTR (int ) ;
 int dev_err (struct device*,char*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int put_device (struct device*) ;

struct device *cec_notifier_parse_hdmi_phandle(struct device *dev)
{
 struct platform_device *hdmi_pdev;
 struct device *hdmi_dev = ((void*)0);
 struct device_node *np;

 np = of_parse_phandle(dev->of_node, "hdmi-phandle", 0);

 if (!np) {
  dev_err(dev, "Failed to find HDMI node in device tree\n");
  return ERR_PTR(-ENODEV);
 }
 hdmi_pdev = of_find_device_by_node(np);
 of_node_put(np);
 if (hdmi_pdev) {
  hdmi_dev = &hdmi_pdev->dev;






  put_device(hdmi_dev);
  return hdmi_dev;
 }
 return ERR_PTR(-EPROBE_DEFER);
}
