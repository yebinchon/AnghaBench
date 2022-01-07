
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;


 TYPE_1__* extcon_info ;
 int get_extcon_type (unsigned int) ;

__attribute__((used)) static bool is_extcon_property_supported(unsigned int id, unsigned int prop)
{
 int type;


 type = get_extcon_type(prop);
 if (type < 0)
  return 0;


 return !!(extcon_info[id].type & type);
}
