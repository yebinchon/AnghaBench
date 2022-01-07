
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_xa; } ;
struct mlx5_ib_dev {TYPE_1__ devx_event_table; } ;
struct devx_obj_event {int obj_sub_list; } ;
struct devx_event_subscription {int is_cleaned; int xa_key_level2; int xa_key_level1; int obj_list; int xa_list; } ;
struct devx_event {int object_ids; } ;


 int WARN_ON (int) ;
 int kfree_rcu (struct devx_obj_event*,int ) ;
 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int *) ;
 int rcu ;
 int xa_erase (int *,int ) ;
 void* xa_load (int *,int ) ;

__attribute__((used)) static void devx_cleanup_subscription(struct mlx5_ib_dev *dev,
          struct devx_event_subscription *sub)
{
 struct devx_event *event;
 struct devx_obj_event *xa_val_level2;

 if (sub->is_cleaned)
  return;

 sub->is_cleaned = 1;
 list_del_rcu(&sub->xa_list);

 if (list_empty(&sub->obj_list))
  return;

 list_del_rcu(&sub->obj_list);

 event = xa_load(&dev->devx_event_table.event_xa,
   sub->xa_key_level1);
 WARN_ON(!event);

 xa_val_level2 = xa_load(&event->object_ids, sub->xa_key_level2);
 if (list_empty(&xa_val_level2->obj_sub_list)) {
  xa_erase(&event->object_ids,
    sub->xa_key_level2);
  kfree_rcu(xa_val_level2, rcu);
 }
}
