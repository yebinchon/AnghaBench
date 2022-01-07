
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fence_obj {int base; } ;


 int dma_fence_free (int *) ;

__attribute__((used)) static void vmw_fence_destroy(struct vmw_fence_obj *fence)
{
 dma_fence_free(&fence->base);
}
