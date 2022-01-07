
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_fence_chan {int base; } ;
struct nouveau_channel {struct nv04_fence_chan* fence; } ;


 int nouveau_fence_context_del (int *) ;
 int nouveau_fence_context_free (int *) ;

__attribute__((used)) static void
nv04_fence_context_del(struct nouveau_channel *chan)
{
 struct nv04_fence_chan *fctx = chan->fence;
 nouveau_fence_context_del(&fctx->base);
 chan->fence = ((void*)0);
 nouveau_fence_context_free(&fctx->base);
}
