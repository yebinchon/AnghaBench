
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence_chan {int fence_ref; } ;


 int kref_put (int *,int ) ;
 int nouveau_fence_context_put ;

void
nouveau_fence_context_free(struct nouveau_fence_chan *fctx)
{
 kref_put(&fctx->fence_ref, nouveau_fence_context_put);
}
