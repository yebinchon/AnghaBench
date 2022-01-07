
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {unsigned long backup_offset; int res_dirty; int id; TYPE_1__* func; struct vmw_private* dev_priv; int lru_head; scalar_t__ pin_count; struct vmw_buffer_object* backup; } ;
struct vmw_private {int resource_lock; int * res_lru; } ;
struct vmw_buffer_object {int dummy; } ;
struct TYPE_2__ {size_t res_type; int may_evict; } ;


 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vmw_buffer_object* vmw_bo_reference (struct vmw_buffer_object*) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 int vmw_resource_mob_attach (struct vmw_resource*) ;
 int vmw_resource_mob_detach (struct vmw_resource*) ;

void vmw_resource_unreserve(struct vmw_resource *res,
       bool dirty_set,
       bool dirty,
       bool switch_backup,
       struct vmw_buffer_object *new_backup,
       unsigned long new_backup_offset)
{
 struct vmw_private *dev_priv = res->dev_priv;

 if (!list_empty(&res->lru_head))
  return;

 if (switch_backup && new_backup != res->backup) {
  if (res->backup) {
   vmw_resource_mob_detach(res);
   vmw_bo_unreference(&res->backup);
  }

  if (new_backup) {
   res->backup = vmw_bo_reference(new_backup);
   vmw_resource_mob_attach(res);
  } else {
   res->backup = ((void*)0);
  }
 }
 if (switch_backup)
  res->backup_offset = new_backup_offset;

 if (dirty_set)
  res->res_dirty = dirty;

 if (!res->func->may_evict || res->id == -1 || res->pin_count)
  return;

 spin_lock(&dev_priv->resource_lock);
 list_add_tail(&res->lru_head,
        &res->dev_priv->res_lru[res->func->res_type]);
 spin_unlock(&dev_priv->resource_lock);
}
