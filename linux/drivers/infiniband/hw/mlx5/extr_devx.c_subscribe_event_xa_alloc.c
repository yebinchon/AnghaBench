
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_devx_event_table {int event_xa; } ;
struct devx_obj_event {int obj_sub_list; int object_ids; int unaffiliated_list; } ;
struct devx_event {int obj_sub_list; int object_ids; int unaffiliated_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct devx_obj_event*) ;
 struct devx_obj_event* kzalloc (int,int ) ;
 int xa_init (int *) ;
 int xa_insert (int *,int ,struct devx_obj_event*,int ) ;
 struct devx_obj_event* xa_load (int *,int ) ;

__attribute__((used)) static int
subscribe_event_xa_alloc(struct mlx5_devx_event_table *devx_event_table,
    u32 key_level1,
    bool is_level2,
    u32 key_level2)
{
 struct devx_obj_event *obj_event;
 struct devx_event *event;
 int err;

 event = xa_load(&devx_event_table->event_xa, key_level1);
 if (!event) {
  event = kzalloc(sizeof(*event), GFP_KERNEL);
  if (!event)
   return -ENOMEM;

  INIT_LIST_HEAD(&event->unaffiliated_list);
  xa_init(&event->object_ids);

  err = xa_insert(&devx_event_table->event_xa,
    key_level1,
    event,
    GFP_KERNEL);
  if (err) {
   kfree(event);
   return err;
  }
 }

 if (!is_level2)
  return 0;

 obj_event = xa_load(&event->object_ids, key_level2);
 if (!obj_event) {
  obj_event = kzalloc(sizeof(*obj_event), GFP_KERNEL);
  if (!obj_event)

   return -ENOMEM;

  err = xa_insert(&event->object_ids,
    key_level2,
    obj_event,
    GFP_KERNEL);
  if (err)
   return err;
  INIT_LIST_HEAD(&obj_event->obj_sub_list);
 }

 return 0;
}
