
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct vmw_resource {int res_dirty; int backup_dirty; struct vmw_res_func* func; } ;
struct vmw_res_func {int (* unbind ) (struct vmw_resource*,int,struct ttm_validate_buffer*) ;int (* destroy ) (struct vmw_resource*) ;int needs_backup; int may_evict; } ;
struct ttm_validate_buffer {scalar_t__ num_shared; int * bo; } ;


 int BUG_ON (int) ;
 int stub1 (struct vmw_resource*,int,struct ttm_validate_buffer*) ;
 int stub2 (struct vmw_resource*) ;
 scalar_t__ unlikely (int) ;
 int vmw_resource_backoff_reservation (struct ww_acquire_ctx*,struct ttm_validate_buffer*) ;
 int vmw_resource_check_buffer (struct ww_acquire_ctx*,struct vmw_resource*,int,struct ttm_validate_buffer*) ;
 scalar_t__ vmw_resource_mob_attached (struct vmw_resource*) ;
 int vmw_resource_mob_detach (struct vmw_resource*) ;

__attribute__((used)) static int vmw_resource_do_evict(struct ww_acquire_ctx *ticket,
     struct vmw_resource *res, bool interruptible)
{
 struct ttm_validate_buffer val_buf;
 const struct vmw_res_func *func = res->func;
 int ret;

 BUG_ON(!func->may_evict);

 val_buf.bo = ((void*)0);
 val_buf.num_shared = 0;
 ret = vmw_resource_check_buffer(ticket, res, interruptible, &val_buf);
 if (unlikely(ret != 0))
  return ret;

 if (unlikely(func->unbind != ((void*)0) &&
       (!func->needs_backup || vmw_resource_mob_attached(res)))) {
  ret = func->unbind(res, res->res_dirty, &val_buf);
  if (unlikely(ret != 0))
   goto out_no_unbind;
  vmw_resource_mob_detach(res);
 }
 ret = func->destroy(res);
 res->backup_dirty = 1;
 res->res_dirty = 0;
out_no_unbind:
 vmw_resource_backoff_reservation(ticket, &val_buf);

 return ret;
}
