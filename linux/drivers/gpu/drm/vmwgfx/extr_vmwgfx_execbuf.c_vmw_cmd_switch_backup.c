
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_user_resource_conv {int dummy; } ;
struct vmw_sw_context {int dummy; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
typedef enum vmw_res_type { ____Placeholder_vmw_res_type } vmw_res_type ;


 int VMW_RES_DIRTY_NONE ;
 int vmw_cmd_res_check (struct vmw_private*,struct vmw_sw_context*,int,int ,struct vmw_user_resource_conv const*,int *,struct vmw_resource**) ;
 int vmw_cmd_res_switch_backup (struct vmw_private*,struct vmw_sw_context*,struct vmw_resource*,int *,unsigned long) ;

__attribute__((used)) static int vmw_cmd_switch_backup(struct vmw_private *dev_priv,
     struct vmw_sw_context *sw_context,
     enum vmw_res_type res_type,
     const struct vmw_user_resource_conv
     *converter, uint32_t *res_id, uint32_t *buf_id,
     unsigned long backup_offset)
{
 struct vmw_resource *res;
 int ret;

 ret = vmw_cmd_res_check(dev_priv, sw_context, res_type,
    VMW_RES_DIRTY_NONE, converter, res_id, &res);
 if (ret)
  return ret;

 return vmw_cmd_res_switch_backup(dev_priv, sw_context, res, buf_id,
      backup_offset);
}
