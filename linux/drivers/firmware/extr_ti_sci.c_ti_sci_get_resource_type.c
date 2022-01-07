
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ti_sci_rm_type_map {scalar_t__ dev_id; scalar_t__ type; } ;
struct ti_sci_info {TYPE_1__* desc; } ;
struct TYPE_2__ {struct ti_sci_rm_type_map* rm_type_map; } ;


 int EINVAL ;

__attribute__((used)) static int ti_sci_get_resource_type(struct ti_sci_info *info, u16 dev_id,
        u16 *type)
{
 struct ti_sci_rm_type_map *rm_type_map = info->desc->rm_type_map;
 bool found = 0;
 int i;


 if (!rm_type_map) {
  *type = dev_id;
  return 0;
 }

 for (i = 0; rm_type_map[i].dev_id; i++) {
  if (rm_type_map[i].dev_id == dev_id) {
   *type = rm_type_map[i].type;
   found = 1;
   break;
  }
 }

 if (!found)
  return -EINVAL;

 return 0;
}
