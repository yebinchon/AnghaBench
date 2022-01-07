
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fence_obj {int base; } ;


 int dma_fence_get (int *) ;

__attribute__((used)) static inline struct vmw_fence_obj *
vmw_fence_obj_reference(struct vmw_fence_obj *fence)
{
 if (fence)
  dma_fence_get(&fence->base);
 return fence;
}
