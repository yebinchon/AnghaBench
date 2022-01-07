
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {unsigned int mem_size_left; } ;
struct vmw_validation_bo_node {int dummy; } ;


 int ENOMEM ;
 int vmw_validation_mem_alloc (struct vmw_validation_context*,unsigned int) ;

int vmw_validation_preload_bo(struct vmw_validation_context *ctx)
{
 unsigned int size = sizeof(struct vmw_validation_bo_node);

 if (!vmw_validation_mem_alloc(ctx, size))
  return -ENOMEM;

 ctx->mem_size_left += size;
 return 0;
}
