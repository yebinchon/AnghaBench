
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int dummy; } ;
struct mock_fence {struct dma_fence base; int lock; } ;


 int GFP_KERNEL ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int ) ;
 struct mock_fence* kmem_cache_alloc (int ,int ) ;
 int mock_ops ;
 int slab_fences ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct dma_fence *mock_fence(void)
{
 struct mock_fence *f;

 f = kmem_cache_alloc(slab_fences, GFP_KERNEL);
 if (!f)
  return ((void*)0);

 spin_lock_init(&f->lock);
 dma_fence_init(&f->base, &mock_ops, &f->lock, 0, 0);

 return &f->base;
}
