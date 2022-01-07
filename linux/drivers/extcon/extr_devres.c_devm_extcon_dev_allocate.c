
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct extcon_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct extcon_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct extcon_dev*) ;
 int devm_extcon_dev_release ;
 int devres_add (struct device*,struct extcon_dev**) ;
 struct extcon_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct extcon_dev**) ;
 struct extcon_dev* extcon_dev_allocate (unsigned int const*) ;

struct extcon_dev *devm_extcon_dev_allocate(struct device *dev,
     const unsigned int *supported_cable)
{
 struct extcon_dev **ptr, *edev;

 ptr = devres_alloc(devm_extcon_dev_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 edev = extcon_dev_allocate(supported_cable);
 if (IS_ERR(edev)) {
  devres_free(ptr);
  return edev;
 }

 edev->dev.parent = dev;

 *ptr = edev;
 devres_add(dev, ptr);

 return edev;
}
