
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read; int sync; int emit; } ;
struct nv04_fence_chan {TYPE_1__ base; } ;
struct nouveau_channel {struct nv04_fence_chan* fence; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv04_fence_chan* kzalloc (int,int ) ;
 int nouveau_fence_context_new (struct nouveau_channel*,TYPE_1__*) ;
 int nv04_fence_emit ;
 int nv04_fence_read ;
 int nv04_fence_sync ;

__attribute__((used)) static int
nv04_fence_context_new(struct nouveau_channel *chan)
{
 struct nv04_fence_chan *fctx = kzalloc(sizeof(*fctx), GFP_KERNEL);
 if (fctx) {
  nouveau_fence_context_new(chan, &fctx->base);
  fctx->base.emit = nv04_fence_emit;
  fctx->base.sync = nv04_fence_sync;
  fctx->base.read = nv04_fence_read;
  chan->fence = fctx;
  return 0;
 }
 return -ENOMEM;
}
