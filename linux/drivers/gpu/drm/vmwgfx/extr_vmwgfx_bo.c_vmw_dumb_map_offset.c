
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int vma_node; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct vmw_buffer_object {TYPE_2__ base; } ;
struct ttm_object_file {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_6__ {struct ttm_object_file* tfile; } ;


 int EINVAL ;
 int drm_vma_node_offset_addr (int *) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 TYPE_3__* vmw_fpriv (struct drm_file*) ;
 int vmw_user_bo_lookup (struct ttm_object_file*,int ,struct vmw_buffer_object**,int *) ;

int vmw_dumb_map_offset(struct drm_file *file_priv,
   struct drm_device *dev, uint32_t handle,
   uint64_t *offset)
{
 struct ttm_object_file *tfile = vmw_fpriv(file_priv)->tfile;
 struct vmw_buffer_object *out_buf;
 int ret;

 ret = vmw_user_bo_lookup(tfile, handle, &out_buf, ((void*)0));
 if (ret != 0)
  return -EINVAL;

 *offset = drm_vma_node_offset_addr(&out_buf->base.base.vma_node);
 vmw_bo_unreference(&out_buf);
 return 0;
}
