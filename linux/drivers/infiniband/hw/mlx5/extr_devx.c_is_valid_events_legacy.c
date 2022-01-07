
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct devx_obj {int dummy; } ;


 int is_legacy_obj_event_num (int ) ;
 int is_legacy_unaffiliated_event_num (int ) ;

__attribute__((used)) static bool is_valid_events_legacy(int num_events, u16 *event_type_num_list,
       struct devx_obj *obj)
{
 int i;

 for (i = 0; i < num_events; i++) {
  if (obj) {
   if (!is_legacy_obj_event_num(event_type_num_list[i]))
    return 0;
  } else if (!is_legacy_unaffiliated_event_num(
    event_type_num_list[i])) {
   return 0;
  }
 }

 return 1;
}
