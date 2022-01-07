
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgem_fence {int base; } ;
struct timer_list {int dummy; } ;


 int dma_fence_signal (int *) ;
 struct vgem_fence* fence ;
 struct vgem_fence* from_timer (int ,struct timer_list*,int ) ;
 int timer ;

__attribute__((used)) static void vgem_fence_timeout(struct timer_list *t)
{
 struct vgem_fence *fence = from_timer(fence, t, timer);

 dma_fence_signal(&fence->base);
}
