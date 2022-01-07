
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int binding_mutex; } ;
struct ttm_validate_buffer {struct ttm_buffer_object* bo; } ;
struct TYPE_2__ {scalar_t__ mem_type; } ;
struct ttm_buffer_object {TYPE_1__ mem; } ;


 int BUG_ON (int) ;
 scalar_t__ VMW_PL_MOB ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vmw_dx_shader_unscrub (struct vmw_resource*) ;

__attribute__((used)) static int vmw_dx_shader_bind(struct vmw_resource *res,
         struct ttm_validate_buffer *val_buf)
{
 struct vmw_private *dev_priv = res->dev_priv;
 struct ttm_buffer_object *bo = val_buf->bo;

 BUG_ON(bo->mem.mem_type != VMW_PL_MOB);
 mutex_lock(&dev_priv->binding_mutex);
 vmw_dx_shader_unscrub(res);
 mutex_unlock(&dev_priv->binding_mutex);

 return 0;
}
