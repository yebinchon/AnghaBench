
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct vmw_resource {int backup_dirty; TYPE_2__* backup; TYPE_1__* func; } ;
struct ttm_validate_buffer {int * bo; int head; scalar_t__ num_shared; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {int base; } ;
struct TYPE_3__ {int backup_placement; scalar_t__ needs_backup; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 int ttm_bo_get (int *) ;
 int ttm_bo_put (int *) ;
 int ttm_bo_validate (int *,int ,struct ttm_operation_ctx*) ;
 int ttm_eu_backoff_reservation (struct ww_acquire_ctx*,struct list_head*) ;
 int ttm_eu_reserve_buffers (struct ww_acquire_ctx*,struct list_head*,int,int *,int) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_unreference (TYPE_2__**) ;
 int vmw_resource_buf_alloc (struct vmw_resource*,int) ;
 int vmw_resource_mob_attached (struct vmw_resource*) ;

__attribute__((used)) static int
vmw_resource_check_buffer(struct ww_acquire_ctx *ticket,
     struct vmw_resource *res,
     bool interruptible,
     struct ttm_validate_buffer *val_buf)
{
 struct ttm_operation_ctx ctx = { 1, 0 };
 struct list_head val_list;
 bool backup_dirty = 0;
 int ret;

 if (unlikely(res->backup == ((void*)0))) {
  ret = vmw_resource_buf_alloc(res, interruptible);
  if (unlikely(ret != 0))
   return ret;
 }

 INIT_LIST_HEAD(&val_list);
 ttm_bo_get(&res->backup->base);
 val_buf->bo = &res->backup->base;
 val_buf->num_shared = 0;
 list_add_tail(&val_buf->head, &val_list);
 ret = ttm_eu_reserve_buffers(ticket, &val_list, interruptible, ((void*)0),
         1);
 if (unlikely(ret != 0))
  goto out_no_reserve;

 if (res->func->needs_backup && !vmw_resource_mob_attached(res))
  return 0;

 backup_dirty = res->backup_dirty;
 ret = ttm_bo_validate(&res->backup->base,
         res->func->backup_placement,
         &ctx);

 if (unlikely(ret != 0))
  goto out_no_validate;

 return 0;

out_no_validate:
 ttm_eu_backoff_reservation(ticket, &val_list);
out_no_reserve:
 ttm_bo_put(val_buf->bo);
 val_buf->bo = ((void*)0);
 if (backup_dirty)
  vmw_bo_unreference(&res->backup);

 return ret;
}
