
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int next_fence; int fence_context; int fence_spinlock; int lock; } ;
struct dma_fence {int dummy; } ;
struct etnaviv_fence {struct dma_fence base; struct etnaviv_gpu* gpu; } ;


 int GFP_KERNEL ;
 int dma_fence_init (struct dma_fence*,int *,int *,int ,int ) ;
 int etnaviv_fence_ops ;
 struct etnaviv_fence* kzalloc (int,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static struct dma_fence *etnaviv_gpu_fence_alloc(struct etnaviv_gpu *gpu)
{
 struct etnaviv_fence *f;





 lockdep_assert_held(&gpu->lock);

 f = kzalloc(sizeof(*f), GFP_KERNEL);
 if (!f)
  return ((void*)0);

 f->gpu = gpu;

 dma_fence_init(&f->base, &etnaviv_fence_ops, &gpu->fence_spinlock,
         gpu->fence_context, ++gpu->next_fence);

 return &f->base;
}
