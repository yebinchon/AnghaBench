
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_fence_chan {int base; int sema; } ;
struct nouveau_channel {struct nv10_fence_chan* fence; } ;


 int nouveau_fence_context_del (int *) ;
 int nouveau_fence_context_free (int *) ;
 int nvif_object_fini (int *) ;

void
nv10_fence_context_del(struct nouveau_channel *chan)
{
 struct nv10_fence_chan *fctx = chan->fence;
 nouveau_fence_context_del(&fctx->base);
 nvif_object_fini(&fctx->sema);
 chan->fence = ((void*)0);
 nouveau_fence_context_free(&fctx->base);
}
