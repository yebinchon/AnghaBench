
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_devx_event_table {int event_xa; } ;
struct devx_obj_event {int obj_sub_list; } ;
struct devx_event {int object_ids; } ;


 int WARN_ON (int) ;
 int kfree_rcu (struct devx_obj_event*,int ) ;
 scalar_t__ list_empty (int *) ;
 int rcu ;
 int xa_erase (int *,int ) ;
 void* xa_load (int *,int ) ;

__attribute__((used)) static void
subscribe_event_xa_dealloc(struct mlx5_devx_event_table *devx_event_table,
      u32 key_level1,
      bool is_level2,
      u32 key_level2)
{
 struct devx_event *event;
 struct devx_obj_event *xa_val_level2;


 if (!is_level2)
  return;

 event = xa_load(&devx_event_table->event_xa, key_level1);
 WARN_ON(!event);

 xa_val_level2 = xa_load(&event->object_ids,
    key_level2);
 if (list_empty(&xa_val_level2->obj_sub_list)) {
  xa_erase(&event->object_ids,
    key_level2);
  kfree_rcu(xa_val_level2, rcu);
 }
}
