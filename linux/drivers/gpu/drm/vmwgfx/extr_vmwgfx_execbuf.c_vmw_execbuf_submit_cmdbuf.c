
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vmw_sw_context {int res_relocations; TYPE_2__* dx_ctx_node; } ;
struct vmw_private {int cman; } ;
struct vmw_cmdbuf_header {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ctx; } ;
struct TYPE_3__ {int id; } ;


 int SVGA3D_INVALID_ID ;
 int vmw_apply_relocations (struct vmw_sw_context*) ;
 int vmw_cmdbuf_commit (int ,int ,struct vmw_cmdbuf_header*,int) ;
 void* vmw_cmdbuf_reserve (int ,int ,int ,int,struct vmw_cmdbuf_header*) ;
 int vmw_resource_relocations_apply (void*,int *) ;
 int vmw_resource_relocations_free (int *) ;

__attribute__((used)) static int vmw_execbuf_submit_cmdbuf(struct vmw_private *dev_priv,
         struct vmw_cmdbuf_header *header,
         u32 command_size,
         struct vmw_sw_context *sw_context)
{
 u32 id = ((sw_context->dx_ctx_node) ? sw_context->dx_ctx_node->ctx->id :
    SVGA3D_INVALID_ID);
 void *cmd = vmw_cmdbuf_reserve(dev_priv->cman, command_size, id, 0,
           header);

 vmw_apply_relocations(sw_context);
 vmw_resource_relocations_apply(cmd, &sw_context->res_relocations);
 vmw_resource_relocations_free(&sw_context->res_relocations);
 vmw_cmdbuf_commit(dev_priv->cman, command_size, header, 0);

 return 0;
}
