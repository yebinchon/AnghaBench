
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_context {scalar_t__ num_hw_submitted; int preempted; int submitted; int hw_submitted; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void vmw_cmdbuf_ctx_init(struct vmw_cmdbuf_context *ctx)
{
 INIT_LIST_HEAD(&ctx->hw_submitted);
 INIT_LIST_HEAD(&ctx->submitted);
 INIT_LIST_HEAD(&ctx->preempted);
 ctx->num_hw_submitted = 0;
}
