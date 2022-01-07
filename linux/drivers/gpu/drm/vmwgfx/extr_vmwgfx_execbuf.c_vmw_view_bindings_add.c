
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef size_t u32 ;
struct vmw_sw_context {int dummy; } ;
struct vmw_resource {int dummy; } ;
struct vmw_ctx_validation_info {int staged; int ctx; } ;
struct TYPE_2__ {int bt; struct vmw_resource* res; int ctx; } ;
struct vmw_ctx_bindinfo_view {size_t slot; TYPE_1__ bi; scalar_t__ shader_slot; } ;
typedef enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;
typedef enum vmw_ctx_binding_type { ____Placeholder_vmw_ctx_binding_type } vmw_ctx_binding_type ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct vmw_resource*) ;
 int PTR_ERR (struct vmw_resource*) ;
 scalar_t__ SVGA3D_INVALID_ID ;
 int VMW_DEBUG_USER (char*) ;
 struct vmw_ctx_validation_info* VMW_GET_CTX_NODE (struct vmw_sw_context*) ;
 int vmw_binding_add (int ,TYPE_1__*,scalar_t__,size_t) ;
 struct vmw_resource* vmw_view_id_val_add (struct vmw_sw_context*,int,scalar_t__) ;

__attribute__((used)) static int vmw_view_bindings_add(struct vmw_sw_context *sw_context,
     enum vmw_view_type view_type,
     enum vmw_ctx_binding_type binding_type,
     uint32 shader_slot,
     uint32 view_ids[], u32 num_views,
     u32 first_slot)
{
 struct vmw_ctx_validation_info *ctx_node = VMW_GET_CTX_NODE(sw_context);
 u32 i;

 if (!ctx_node)
  return -EINVAL;

 for (i = 0; i < num_views; ++i) {
  struct vmw_ctx_bindinfo_view binding;
  struct vmw_resource *view = ((void*)0);

  if (view_ids[i] != SVGA3D_INVALID_ID) {
   view = vmw_view_id_val_add(sw_context, view_type,
         view_ids[i]);
   if (IS_ERR(view)) {
    VMW_DEBUG_USER("View not found.\n");
    return PTR_ERR(view);
   }
  }
  binding.bi.ctx = ctx_node->ctx;
  binding.bi.res = view;
  binding.bi.bt = binding_type;
  binding.shader_slot = shader_slot;
  binding.slot = first_slot + i;
  vmw_binding_add(ctx_node->staged, &binding.bi,
    shader_slot, binding.slot);
 }

 return 0;
}
