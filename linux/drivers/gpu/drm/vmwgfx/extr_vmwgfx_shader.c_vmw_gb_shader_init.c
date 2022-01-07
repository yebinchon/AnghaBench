
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
struct vmw_shader {void* num_output_sig; void* num_input_sig; int type; void* size; } ;
struct vmw_resource {int hw_destroy; int backup_offset; int backup; void* backup_size; } ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;
typedef int SVGA3dShaderType ;


 int kfree (struct vmw_resource*) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_reference (struct vmw_buffer_object*) ;
 int vmw_gb_shader_func ;
 int vmw_hw_shader_destroy ;
 struct vmw_shader* vmw_res_to_shader (struct vmw_resource*) ;
 int vmw_resource_init (struct vmw_private*,struct vmw_resource*,int,void (*) (struct vmw_resource*),int *) ;

__attribute__((used)) static int vmw_gb_shader_init(struct vmw_private *dev_priv,
         struct vmw_resource *res,
         uint32_t size,
         uint64_t offset,
         SVGA3dShaderType type,
         uint8_t num_input_sig,
         uint8_t num_output_sig,
         struct vmw_buffer_object *byte_code,
         void (*res_free) (struct vmw_resource *res))
{
 struct vmw_shader *shader = vmw_res_to_shader(res);
 int ret;

 ret = vmw_resource_init(dev_priv, res, 1, res_free,
    &vmw_gb_shader_func);

 if (unlikely(ret != 0)) {
  if (res_free)
   res_free(res);
  else
   kfree(res);
  return ret;
 }

 res->backup_size = size;
 if (byte_code) {
  res->backup = vmw_bo_reference(byte_code);
  res->backup_offset = offset;
 }
 shader->size = size;
 shader->type = type;
 shader->num_input_sig = num_input_sig;
 shader->num_output_sig = num_output_sig;

 res->hw_destroy = vmw_hw_shader_destroy;
 return 0;
}
