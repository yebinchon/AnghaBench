
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sw_context {int staged_bindings_inuse; int ctx_list; int * staged_bindings; } ;
struct vmw_resource {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_ctx_validation_info {int head; int cur; struct vmw_resource* ctx; int * staged; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ unlikely (int) ;
 void* vmw_binding_state_alloc (struct vmw_private*) ;
 int vmw_context_binding_state (struct vmw_resource*) ;
 int vmw_resource_context_res_add (struct vmw_private*,struct vmw_sw_context*,struct vmw_resource*) ;

__attribute__((used)) static int vmw_cmd_ctx_first_setup(struct vmw_private *dev_priv,
       struct vmw_sw_context *sw_context,
       struct vmw_resource *res,
       struct vmw_ctx_validation_info *node)
{
 int ret;

 ret = vmw_resource_context_res_add(dev_priv, sw_context, res);
 if (unlikely(ret != 0))
  goto out_err;

 if (!sw_context->staged_bindings) {
  sw_context->staged_bindings = vmw_binding_state_alloc(dev_priv);
  if (IS_ERR(sw_context->staged_bindings)) {
   ret = PTR_ERR(sw_context->staged_bindings);
   sw_context->staged_bindings = ((void*)0);
   goto out_err;
  }
 }

 if (sw_context->staged_bindings_inuse) {
  node->staged = vmw_binding_state_alloc(dev_priv);
  if (IS_ERR(node->staged)) {
   ret = PTR_ERR(node->staged);
   node->staged = ((void*)0);
   goto out_err;
  }
 } else {
  node->staged = sw_context->staged_bindings;
  sw_context->staged_bindings_inuse = 1;
 }

 node->ctx = res;
 node->cur = vmw_context_binding_state(res);
 list_add_tail(&node->head, &sw_context->ctx_list);

 return 0;

out_err:
 return ret;
}
