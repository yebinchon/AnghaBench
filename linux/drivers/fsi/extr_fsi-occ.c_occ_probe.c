
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device_info {char* name; int id; struct device* parent; } ;
struct device {scalar_t__ of_node; int parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* parent; int name; int minor; int * fops; } ;
struct occ {scalar_t__ idx; TYPE_1__ mdev; int name; int occ_lock; int sbefifo; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INT_MAX ;
 int MISC_DYNAMIC_MINOR ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;
 struct occ* devm_kzalloc (struct device*,int,int ) ;
 void* ida_simple_get (int *,int,int,int ) ;
 int ida_simple_remove (int *,int) ;
 int misc_register (TYPE_1__*) ;
 int mutex_init (int *) ;
 int occ_fops ;
 int occ_ida ;
 int of_property_read_u32 (scalar_t__,char*,int*) ;
 struct platform_device* platform_device_register_full (struct platform_device_info*) ;
 int platform_set_drvdata (struct platform_device*,struct occ*) ;
 int snprintf (int ,int,char*,scalar_t__) ;

__attribute__((used)) static int occ_probe(struct platform_device *pdev)
{
 int rc;
 u32 reg;
 struct occ *occ;
 struct platform_device *hwmon_dev;
 struct device *dev = &pdev->dev;
 struct platform_device_info hwmon_dev_info = {
  .parent = dev,
  .name = "occ-hwmon",
 };

 occ = devm_kzalloc(dev, sizeof(*occ), GFP_KERNEL);
 if (!occ)
  return -ENOMEM;

 occ->dev = dev;
 occ->sbefifo = dev->parent;
 mutex_init(&occ->occ_lock);

 if (dev->of_node) {
  rc = of_property_read_u32(dev->of_node, "reg", &reg);
  if (!rc) {

   occ->idx = ida_simple_get(&occ_ida, reg, reg + 1,
        GFP_KERNEL);
   if (occ->idx < 0)
    occ->idx = ida_simple_get(&occ_ida, 1, INT_MAX,
         GFP_KERNEL);
  } else {
   occ->idx = ida_simple_get(&occ_ida, 1, INT_MAX,
        GFP_KERNEL);
  }
 } else {
  occ->idx = ida_simple_get(&occ_ida, 1, INT_MAX, GFP_KERNEL);
 }

 platform_set_drvdata(pdev, occ);

 snprintf(occ->name, sizeof(occ->name), "occ%d", occ->idx);
 occ->mdev.fops = &occ_fops;
 occ->mdev.minor = MISC_DYNAMIC_MINOR;
 occ->mdev.name = occ->name;
 occ->mdev.parent = dev;

 rc = misc_register(&occ->mdev);
 if (rc) {
  dev_err(dev, "failed to register miscdevice: %d\n", rc);
  ida_simple_remove(&occ_ida, occ->idx);
  return rc;
 }

 hwmon_dev_info.id = occ->idx;
 hwmon_dev = platform_device_register_full(&hwmon_dev_info);
 if (!hwmon_dev)
  dev_warn(dev, "failed to create hwmon device\n");

 return 0;
}
