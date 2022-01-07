
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int reservation_sem; } ;
struct vmw_buffer_object {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct vmw_buffer_object* kmalloc (int,int ) ;
 int ttm_write_lock (int *,int) ;
 int ttm_write_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_bo_free ;
 int vmw_bo_init (struct vmw_private*,struct vmw_buffer_object*,size_t,int *,int,int *) ;
 int vmw_sys_placement ;

__attribute__((used)) static int vmw_fb_create_bo(struct vmw_private *vmw_priv,
       size_t size, struct vmw_buffer_object **out)
{
 struct vmw_buffer_object *vmw_bo;
 int ret;

 (void) ttm_write_lock(&vmw_priv->reservation_sem, 0);

 vmw_bo = kmalloc(sizeof(*vmw_bo), GFP_KERNEL);
 if (!vmw_bo) {
  ret = -ENOMEM;
  goto err_unlock;
 }

 ret = vmw_bo_init(vmw_priv, vmw_bo, size,
         &vmw_sys_placement,
         0,
         &vmw_bo_bo_free);
 if (unlikely(ret != 0))
  goto err_unlock;

 *out = vmw_bo;
 ttm_write_unlock(&vmw_priv->reservation_sem);

 return 0;

err_unlock:
 ttm_write_unlock(&vmw_priv->reservation_sem);
 return ret;
}
