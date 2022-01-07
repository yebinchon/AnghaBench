
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_vmw_dmabuf_rep {scalar_t__ cur_gmr_offset; void* cur_gmr_id; int map_handle; void* handle; } ;
struct drm_vmw_alloc_dmabuf_req {int size; } ;
union drm_vmw_alloc_dmabuf_arg {struct drm_vmw_dmabuf_rep rep; struct drm_vmw_alloc_dmabuf_req req; } ;
typedef void* uint32_t ;
struct vmw_private {int reservation_sem; } ;
struct TYPE_4__ {int vma_node; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct vmw_buffer_object {TYPE_2__ base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {int tfile; } ;


 int drm_vma_node_offset_addr (int *) ;
 int ttm_read_lock (int *,int) ;
 int ttm_read_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 TYPE_3__* vmw_fpriv (struct drm_file*) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_user_bo_alloc (struct vmw_private*,int ,int ,int,void**,struct vmw_buffer_object**,int *) ;

int vmw_bo_alloc_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 union drm_vmw_alloc_dmabuf_arg *arg =
     (union drm_vmw_alloc_dmabuf_arg *)data;
 struct drm_vmw_alloc_dmabuf_req *req = &arg->req;
 struct drm_vmw_dmabuf_rep *rep = &arg->rep;
 struct vmw_buffer_object *vbo;
 uint32_t handle;
 int ret;

 ret = ttm_read_lock(&dev_priv->reservation_sem, 1);
 if (unlikely(ret != 0))
  return ret;

 ret = vmw_user_bo_alloc(dev_priv, vmw_fpriv(file_priv)->tfile,
    req->size, 0, &handle, &vbo,
    ((void*)0));
 if (unlikely(ret != 0))
  goto out_no_bo;

 rep->handle = handle;
 rep->map_handle = drm_vma_node_offset_addr(&vbo->base.base.vma_node);
 rep->cur_gmr_id = handle;
 rep->cur_gmr_offset = 0;

 vmw_bo_unreference(&vbo);

out_no_bo:
 ttm_read_unlock(&dev_priv->reservation_sem);

 return ret;
}
