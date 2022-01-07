
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {int bo_list; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool
vmw_validation_has_bos(struct vmw_validation_context *ctx)
{
 return !list_empty(&ctx->bo_list);
}
