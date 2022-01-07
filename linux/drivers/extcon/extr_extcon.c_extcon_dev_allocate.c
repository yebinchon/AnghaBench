
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {unsigned int const* supported_cable; scalar_t__ max_supported; } ;


 int EINVAL ;
 int ENOMEM ;
 struct extcon_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct extcon_dev* kzalloc (int,int ) ;

struct extcon_dev *extcon_dev_allocate(const unsigned int *supported_cable)
{
 struct extcon_dev *edev;

 if (!supported_cable)
  return ERR_PTR(-EINVAL);

 edev = kzalloc(sizeof(*edev), GFP_KERNEL);
 if (!edev)
  return ERR_PTR(-ENOMEM);

 edev->max_supported = 0;
 edev->supported_cable = supported_cable;

 return edev;
}
