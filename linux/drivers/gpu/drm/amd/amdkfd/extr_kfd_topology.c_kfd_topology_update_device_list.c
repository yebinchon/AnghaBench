
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int next; } ;
struct TYPE_2__ {int num_devices; } ;


 int list_empty (struct list_head*) ;
 int list_move_tail (int ,struct list_head*) ;
 TYPE_1__ sys_props ;

__attribute__((used)) static void kfd_topology_update_device_list(struct list_head *temp_list,
     struct list_head *master_list)
{
 while (!list_empty(temp_list)) {
  list_move_tail(temp_list->next, master_list);
  sys_props.num_devices++;
 }
}
