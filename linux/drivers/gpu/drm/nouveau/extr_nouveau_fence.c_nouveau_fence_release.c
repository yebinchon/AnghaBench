
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence_chan {int fence_ref; } ;
struct nouveau_fence {int base; } ;
struct dma_fence {int dummy; } ;


 int dma_fence_free (int *) ;
 struct nouveau_fence* from_fence (struct dma_fence*) ;
 int kref_put (int *,int ) ;
 struct nouveau_fence_chan* nouveau_fctx (struct nouveau_fence*) ;
 int nouveau_fence_context_put ;

__attribute__((used)) static void nouveau_fence_release(struct dma_fence *f)
{
 struct nouveau_fence *fence = from_fence(f);
 struct nouveau_fence_chan *fctx = nouveau_fctx(fence);

 kref_put(&fctx->fence_ref, nouveau_fence_context_put);
 dma_fence_free(&fence->base);
}
