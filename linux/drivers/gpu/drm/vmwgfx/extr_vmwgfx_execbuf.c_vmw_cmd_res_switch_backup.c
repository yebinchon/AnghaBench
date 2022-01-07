
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_sw_context {int ctx; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;


 int EINVAL ;
 void* vmw_execbuf_info_from_res (struct vmw_sw_context*,struct vmw_resource*) ;
 int vmw_translate_mob_ptr (struct vmw_private*,struct vmw_sw_context*,int *,struct vmw_buffer_object**) ;
 int vmw_validation_res_switch_backup (int ,void*,struct vmw_buffer_object*,unsigned long) ;

__attribute__((used)) static int vmw_cmd_res_switch_backup(struct vmw_private *dev_priv,
         struct vmw_sw_context *sw_context,
         struct vmw_resource *res, uint32_t *buf_id,
         unsigned long backup_offset)
{
 struct vmw_buffer_object *vbo;
 void *info;
 int ret;

 info = vmw_execbuf_info_from_res(sw_context, res);
 if (!info)
  return -EINVAL;

 ret = vmw_translate_mob_ptr(dev_priv, sw_context, buf_id, &vbo);
 if (ret)
  return ret;

 vmw_validation_res_switch_backup(sw_context->ctx, info, vbo,
      backup_offset);
 return 0;
}
