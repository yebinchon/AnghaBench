
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extcon_dev {int dummy; } ;


 int EINVAL ;
 int find_cable_index_by_id (struct extcon_dev*,unsigned int) ;
 int is_extcon_property_capability (struct extcon_dev*,unsigned int,int,unsigned int) ;
 int is_extcon_property_supported (unsigned int,unsigned int) ;

int extcon_get_property_capability(struct extcon_dev *edev, unsigned int id,
     unsigned int prop)
{
 int index;

 if (!edev)
  return -EINVAL;


 if (!is_extcon_property_supported(id, prop))
  return -EINVAL;


 index = find_cable_index_by_id(edev, id);
 if (index < 0)
  return index;

 return is_extcon_property_capability(edev, id, index, prop);
}
