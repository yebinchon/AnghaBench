
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;
struct vmw_private {int reservation_sem; } ;
struct TYPE_3__ {scalar_t__ num_pages; } ;
struct vmw_buffer_object {TYPE_1__ base; } ;
struct ttm_object_file {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum drm_vmw_shader_type { ____Placeholder_drm_vmw_shader_type } drm_vmw_shader_type ;
struct TYPE_4__ {struct ttm_object_file* tfile; } ;
typedef int SVGA3dShaderType ;


 int EINVAL ;
 int PAGE_SIZE ;
 int SVGA3D_INVALID_ID ;
 int SVGA3D_SHADERTYPE_PS ;
 int SVGA3D_SHADERTYPE_VS ;
 int VMW_DEBUG_USER (char*) ;


 int ttm_read_lock (int *,int) ;
 int ttm_read_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_unreference (struct vmw_buffer_object**) ;
 TYPE_2__* vmw_fpriv (struct drm_file*) ;
 struct vmw_private* vmw_priv (struct drm_device*) ;
 int vmw_user_bo_lookup (struct ttm_object_file*,int ,struct vmw_buffer_object**,int *) ;
 int vmw_user_shader_alloc (struct vmw_private*,struct vmw_buffer_object*,size_t,size_t,int ,int ,int ,struct ttm_object_file*,int *) ;

__attribute__((used)) static int vmw_shader_define(struct drm_device *dev, struct drm_file *file_priv,
        enum drm_vmw_shader_type shader_type_drm,
        u32 buffer_handle, size_t size, size_t offset,
        uint8_t num_input_sig, uint8_t num_output_sig,
        uint32_t *shader_handle)
{
 struct vmw_private *dev_priv = vmw_priv(dev);
 struct ttm_object_file *tfile = vmw_fpriv(file_priv)->tfile;
 struct vmw_buffer_object *buffer = ((void*)0);
 SVGA3dShaderType shader_type;
 int ret;

 if (buffer_handle != SVGA3D_INVALID_ID) {
  ret = vmw_user_bo_lookup(tfile, buffer_handle,
          &buffer, ((void*)0));
  if (unlikely(ret != 0)) {
   VMW_DEBUG_USER("Couldn't find buffer for shader creation.\n");
   return ret;
  }

  if ((u64)buffer->base.num_pages * PAGE_SIZE <
      (u64)size + (u64)offset) {
   VMW_DEBUG_USER("Illegal buffer- or shader size.\n");
   ret = -EINVAL;
   goto out_bad_arg;
  }
 }

 switch (shader_type_drm) {
 case 128:
  shader_type = SVGA3D_SHADERTYPE_VS;
  break;
 case 129:
  shader_type = SVGA3D_SHADERTYPE_PS;
  break;
 default:
  VMW_DEBUG_USER("Illegal shader type.\n");
  ret = -EINVAL;
  goto out_bad_arg;
 }

 ret = ttm_read_lock(&dev_priv->reservation_sem, 1);
 if (unlikely(ret != 0))
  goto out_bad_arg;

 ret = vmw_user_shader_alloc(dev_priv, buffer, size, offset,
        shader_type, num_input_sig,
        num_output_sig, tfile, shader_handle);

 ttm_read_unlock(&dev_priv->reservation_sem);
out_bad_arg:
 vmw_bo_unreference(&buffer);
 return ret;
}
