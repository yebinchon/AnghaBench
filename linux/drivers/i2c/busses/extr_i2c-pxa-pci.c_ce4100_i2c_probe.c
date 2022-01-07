
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct TYPE_2__ {int of_node; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct ce4100_devices {int * pdev; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int add_i2c_device (struct pci_dev*,int) ;
 int dev_err (TYPE_1__*,char*) ;
 int kfree (struct ce4100_devices*) ;
 struct ce4100_devices* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct ce4100_devices*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int ce4100_i2c_probe(struct pci_dev *dev,
  const struct pci_device_id *ent)
{
 int ret;
 int i;
 struct ce4100_devices *sds;

 ret = pci_enable_device_mem(dev);
 if (ret)
  return ret;

 if (!dev->dev.of_node) {
  dev_err(&dev->dev, "Missing device tree node.\n");
  return -EINVAL;
 }
 sds = kzalloc(sizeof(*sds), GFP_KERNEL);
 if (!sds) {
  ret = -ENOMEM;
  goto err_mem;
 }

 for (i = 0; i < ARRAY_SIZE(sds->pdev); i++) {
  sds->pdev[i] = add_i2c_device(dev, i);
  if (IS_ERR(sds->pdev[i])) {
   ret = PTR_ERR(sds->pdev[i]);
   while (--i >= 0)
    platform_device_unregister(sds->pdev[i]);
   goto err_dev_add;
  }
 }
 pci_set_drvdata(dev, sds);
 return 0;

err_dev_add:
 kfree(sds);
err_mem:
 pci_disable_device(dev);
 return ret;
}
