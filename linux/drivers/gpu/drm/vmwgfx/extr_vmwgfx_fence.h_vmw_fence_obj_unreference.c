
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fence_obj {int base; } ;


 int dma_fence_put (int *) ;

__attribute__((used)) static inline void
vmw_fence_obj_unreference(struct vmw_fence_obj **fence_p)
{
 struct vmw_fence_obj *fence = *fence_p;

 *fence_p = ((void*)0);
 if (fence)
  dma_fence_put(&fence->base);
}
