
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {scalar_t__ has_mob; } ;
struct vmw_ctx_validation_info {int dummy; } ;
typedef enum vmw_res_type { ____Placeholder_vmw_res_type } vmw_res_type ;


 int vmw_res_context ;
 int vmw_res_dx_context ;

__attribute__((used)) static unsigned int vmw_execbuf_res_size(struct vmw_private *dev_priv,
      enum vmw_res_type res_type)
{
 return (res_type == vmw_res_dx_context ||
  (res_type == vmw_res_context && dev_priv->has_mob)) ?
  sizeof(struct vmw_ctx_validation_info) : 0;
}
