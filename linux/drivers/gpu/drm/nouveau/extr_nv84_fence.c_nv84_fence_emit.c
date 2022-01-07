
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {int (* emit32 ) (struct nouveau_channel*,scalar_t__,int ) ;} ;
struct nv84_fence_chan {TYPE_2__ base; TYPE_1__* vma; } ;
struct TYPE_6__ {int seqno; } ;
struct nouveau_fence {TYPE_3__ base; struct nouveau_channel* channel; } ;
struct nouveau_channel {int chid; struct nv84_fence_chan* fence; } ;
struct TYPE_4__ {scalar_t__ addr; } ;


 int stub1 (struct nouveau_channel*,scalar_t__,int ) ;

__attribute__((used)) static int
nv84_fence_emit(struct nouveau_fence *fence)
{
 struct nouveau_channel *chan = fence->channel;
 struct nv84_fence_chan *fctx = chan->fence;
 u64 addr = fctx->vma->addr + chan->chid * 16;

 return fctx->base.emit32(chan, addr, fence->base.seqno);
}
