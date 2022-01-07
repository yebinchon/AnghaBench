
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int id; struct vmw_res_func* func; } ;
struct vmw_res_func {int (* create ) (struct vmw_resource*) ;int (* bind ) (struct vmw_resource*,struct ttm_validate_buffer*) ;int (* destroy ) (struct vmw_resource*) ;scalar_t__ needs_backup; } ;
struct ttm_validate_buffer {int * bo; } ;


 int stub1 (struct vmw_resource*) ;
 int stub2 (struct vmw_resource*,struct ttm_validate_buffer*) ;
 int stub3 (struct vmw_resource*) ;
 scalar_t__ unlikely (int) ;
 int vmw_resource_mob_attach (struct vmw_resource*) ;
 int vmw_resource_mob_attached (struct vmw_resource*) ;

__attribute__((used)) static int vmw_resource_do_validate(struct vmw_resource *res,
        struct ttm_validate_buffer *val_buf)
{
 int ret = 0;
 const struct vmw_res_func *func = res->func;

 if (unlikely(res->id == -1)) {
  ret = func->create(res);
  if (unlikely(ret != 0))
   return ret;
 }

 if (func->bind &&
     ((func->needs_backup && !vmw_resource_mob_attached(res) &&
       val_buf->bo != ((void*)0)) ||
      (!func->needs_backup && val_buf->bo != ((void*)0)))) {
  ret = func->bind(res, val_buf);
  if (unlikely(ret != 0))
   goto out_bind_failed;
  if (func->needs_backup)
   vmw_resource_mob_attach(res);
 }

 return 0;

out_bind_failed:
 func->destroy(res);

 return ret;
}
