
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {int bo_list; int resource_ctx_list; int resource_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct vmw_validation_context*,int ,int) ;

__attribute__((used)) static inline void
vmw_validation_context_init(struct vmw_validation_context *ctx)
{
 memset(ctx, 0, sizeof(*ctx));
 INIT_LIST_HEAD(&ctx->resource_list);
 INIT_LIST_HEAD(&ctx->resource_ctx_list);
 INIT_LIST_HEAD(&ctx->bo_list);
}
