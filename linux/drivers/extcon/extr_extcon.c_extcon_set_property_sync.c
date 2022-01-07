
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union extcon_property_value {int dummy; } extcon_property_value ;
struct extcon_dev {int dummy; } ;


 int extcon_set_property (struct extcon_dev*,unsigned int,unsigned int,union extcon_property_value) ;
 int extcon_sync (struct extcon_dev*,unsigned int) ;

int extcon_set_property_sync(struct extcon_dev *edev, unsigned int id,
    unsigned int prop,
    union extcon_property_value prop_val)
{
 int ret;

 ret = extcon_set_property(edev, id, prop, prop_val);
 if (ret < 0)
  return ret;

 return extcon_sync(edev, id);
}
