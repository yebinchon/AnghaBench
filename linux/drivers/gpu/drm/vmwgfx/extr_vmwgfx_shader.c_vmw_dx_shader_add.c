
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_resource {int hw_destroy; int id; struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;
struct vmw_dx_shader {int committed; int id; int cotable_head; int cotable; struct vmw_resource* ctx; struct vmw_resource res; } ;
struct vmw_cmdbuf_res_manager {int dummy; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct list_head {int dummy; } ;
typedef int SVGA3dShaderType ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SVGA_COTABLE_DXSHADER ;
 struct vmw_dx_shader* kmalloc (int,int ) ;
 int ttm_mem_global_alloc (int ,scalar_t__,struct ttm_operation_ctx*) ;
 int ttm_mem_global_free (int ,scalar_t__) ;
 scalar_t__ ttm_round_pot (int) ;
 int vmw_cmdbuf_res_add (struct vmw_cmdbuf_res_manager*,int ,int ,struct vmw_resource*,struct list_head*) ;
 int vmw_cmdbuf_res_shader ;
 int vmw_context_cotable (struct vmw_resource*,int ) ;
 int vmw_dx_shader_func ;
 int vmw_dx_shader_res_free ;
 int vmw_hw_shader_destroy ;
 int vmw_mem_glob (struct vmw_private*) ;
 int vmw_resource_init (struct vmw_private*,struct vmw_resource*,int,int ,int *) ;
 int vmw_resource_reference (int ) ;
 int vmw_resource_unreference (struct vmw_resource**) ;
 scalar_t__ vmw_shader_dx_size ;
 int vmw_shader_id_ok (int ,int ) ;
 int vmw_shader_key (int ,int ) ;

int vmw_dx_shader_add(struct vmw_cmdbuf_res_manager *man,
        struct vmw_resource *ctx,
        u32 user_key,
        SVGA3dShaderType shader_type,
        struct list_head *list)
{
 struct vmw_dx_shader *shader;
 struct vmw_resource *res;
 struct vmw_private *dev_priv = ctx->dev_priv;
 struct ttm_operation_ctx ttm_opt_ctx = {
  .interruptible = 1,
  .no_wait_gpu = 0
 };
 int ret;

 if (!vmw_shader_dx_size)
  vmw_shader_dx_size = ttm_round_pot(sizeof(*shader));

 if (!vmw_shader_id_ok(user_key, shader_type))
  return -EINVAL;

 ret = ttm_mem_global_alloc(vmw_mem_glob(dev_priv), vmw_shader_dx_size,
       &ttm_opt_ctx);
 if (ret) {
  if (ret != -ERESTARTSYS)
   DRM_ERROR("Out of graphics memory for shader "
      "creation.\n");
  return ret;
 }

 shader = kmalloc(sizeof(*shader), GFP_KERNEL);
 if (!shader) {
  ttm_mem_global_free(vmw_mem_glob(dev_priv), vmw_shader_dx_size);
  return -ENOMEM;
 }

 res = &shader->res;
 shader->ctx = ctx;
 shader->cotable = vmw_resource_reference
  (vmw_context_cotable(ctx, SVGA_COTABLE_DXSHADER));
 shader->id = user_key;
 shader->committed = 0;
 INIT_LIST_HEAD(&shader->cotable_head);
 ret = vmw_resource_init(dev_priv, res, 1,
    vmw_dx_shader_res_free, &vmw_dx_shader_func);
 if (ret)
  goto out_resource_init;





 ret = vmw_cmdbuf_res_add(man, vmw_cmdbuf_res_shader,
     vmw_shader_key(user_key, 0),
     res, list);
 if (ret)
  goto out_resource_init;

 res->id = shader->id;
 res->hw_destroy = vmw_hw_shader_destroy;

out_resource_init:
 vmw_resource_unreference(&res);

 return ret;
}
