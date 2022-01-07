
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sw_context {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_ctx_validation_info {int dummy; } ;
typedef int SVGA3dCmdHeader ;


 int EINVAL ;
 struct vmw_ctx_validation_info* VMW_GET_CTX_NODE (struct vmw_sw_context*) ;

__attribute__((used)) static int vmw_cmd_dx_cid_check(struct vmw_private *dev_priv,
    struct vmw_sw_context *sw_context,
    SVGA3dCmdHeader *header)
{
 struct vmw_ctx_validation_info *ctx_node = VMW_GET_CTX_NODE(sw_context);

 if (!ctx_node)
  return -EINVAL;

 return 0;
}
