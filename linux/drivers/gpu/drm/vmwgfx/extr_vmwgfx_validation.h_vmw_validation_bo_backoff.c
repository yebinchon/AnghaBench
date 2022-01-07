
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {int bo_list; int ticket; } ;


 int ttm_eu_backoff_reservation (int *,int *) ;

__attribute__((used)) static inline void
vmw_validation_bo_backoff(struct vmw_validation_context *ctx)
{
 ttm_eu_backoff_reservation(&ctx->ticket, &ctx->bo_list);
}
