
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_mem {int dummy; } ;
struct vmw_validation_context {struct vmw_validation_mem* vm; } ;



__attribute__((used)) static inline void
vmw_validation_set_val_mem(struct vmw_validation_context *ctx,
      struct vmw_validation_mem *vm)
{
 ctx->vm = vm;
}
