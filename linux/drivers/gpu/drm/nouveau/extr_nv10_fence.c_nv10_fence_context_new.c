
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync; int read; int emit; } ;
struct nv10_fence_chan {TYPE_1__ base; } ;
struct nouveau_channel {struct nv10_fence_chan* fence; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nv10_fence_chan* kzalloc (int,int ) ;
 int nouveau_fence_context_new (struct nouveau_channel*,TYPE_1__*) ;
 int nv10_fence_emit ;
 int nv10_fence_read ;
 int nv10_fence_sync ;

__attribute__((used)) static int
nv10_fence_context_new(struct nouveau_channel *chan)
{
 struct nv10_fence_chan *fctx;

 fctx = chan->fence = kzalloc(sizeof(*fctx), GFP_KERNEL);
 if (!fctx)
  return -ENOMEM;

 nouveau_fence_context_new(chan, &fctx->base);
 fctx->base.emit = nv10_fence_emit;
 fctx->base.read = nv10_fence_read;
 fctx->base.sync = nv10_fence_sync;
 return 0;
}
