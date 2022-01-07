
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {int bo_list; int ticket; } ;


 int ttm_eu_reserve_buffers (int *,int *,int,int *,int) ;

__attribute__((used)) static inline int
vmw_validation_bo_reserve(struct vmw_validation_context *ctx,
     bool intr)
{
 return ttm_eu_reserve_buffers(&ctx->ticket, &ctx->bo_list, intr,
          ((void*)0), 1);
}
