
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct extcon_dev_notifier_devres {struct notifier_block* nb; struct extcon_dev* edev; } ;
struct extcon_dev {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_extcon_dev_notifier_all_unreg ;
 int devres_add (struct device*,struct extcon_dev_notifier_devres*) ;
 struct extcon_dev_notifier_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct extcon_dev_notifier_devres*) ;
 int extcon_register_notifier_all (struct extcon_dev*,struct notifier_block*) ;

int devm_extcon_register_notifier_all(struct device *dev, struct extcon_dev *edev,
    struct notifier_block *nb)
{
 struct extcon_dev_notifier_devres *ptr;
 int ret;

 ptr = devres_alloc(devm_extcon_dev_notifier_all_unreg, sizeof(*ptr),
    GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = extcon_register_notifier_all(edev, nb);
 if (ret) {
  devres_free(ptr);
  return ret;
 }

 ptr->edev = edev;
 ptr->nb = nb;
 devres_add(dev, ptr);

 return 0;
}
