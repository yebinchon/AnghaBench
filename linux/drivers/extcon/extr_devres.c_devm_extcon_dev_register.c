
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_extcon_dev_unreg ;
 int devres_add (struct device*,struct extcon_dev**) ;
 struct extcon_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct extcon_dev**) ;
 int extcon_dev_register (struct extcon_dev*) ;

int devm_extcon_dev_register(struct device *dev, struct extcon_dev *edev)
{
 struct extcon_dev **ptr;
 int ret;

 ptr = devres_alloc(devm_extcon_dev_unreg, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = extcon_dev_register(edev);
 if (ret) {
  devres_free(ptr);
  return ret;
 }

 *ptr = edev;
 devres_add(dev, ptr);

 return 0;
}
