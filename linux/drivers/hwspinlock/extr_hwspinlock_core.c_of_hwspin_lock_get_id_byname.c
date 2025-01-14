
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int of_hwspin_lock_get_id (struct device_node*,int) ;
 int of_property_match_string (struct device_node*,char*,char const*) ;

int of_hwspin_lock_get_id_byname(struct device_node *np, const char *name)
{
 int index;

 if (!name)
  return -EINVAL;

 index = of_property_match_string(np, "hwlock-names", name);
 if (index < 0)
  return index;

 return of_hwspin_lock_get_id(np, index);
}
