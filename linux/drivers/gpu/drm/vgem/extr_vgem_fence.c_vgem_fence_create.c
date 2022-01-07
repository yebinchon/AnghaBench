
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgem_file {int dummy; } ;
struct dma_fence {int dummy; } ;
struct vgem_fence {struct dma_fence base; int timer; int lock; } ;


 int GFP_KERNEL ;
 scalar_t__ VGEM_FENCE_TIMEOUT ;
 int dma_fence_context_alloc (int) ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int) ;
 scalar_t__ jiffies ;
 struct vgem_fence* kzalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int vgem_fence_ops ;
 int vgem_fence_timeout ;

__attribute__((used)) static struct dma_fence *vgem_fence_create(struct vgem_file *vfile,
        unsigned int flags)
{
 struct vgem_fence *fence;

 fence = kzalloc(sizeof(*fence), GFP_KERNEL);
 if (!fence)
  return ((void*)0);

 spin_lock_init(&fence->lock);
 dma_fence_init(&fence->base, &vgem_fence_ops, &fence->lock,
         dma_fence_context_alloc(1), 1);

 timer_setup(&fence->timer, vgem_fence_timeout, 0);


 mod_timer(&fence->timer, jiffies + VGEM_FENCE_TIMEOUT);

 return &fence->base;
}
