
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seqno; } ;
struct nouveau_fence {TYPE_1__ base; struct nouveau_channel* channel; } ;
struct nouveau_channel {int dummy; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int,int) ;
 int FIRE_RING (struct nouveau_channel*) ;
 int NvSubSw ;
 int OUT_RING (struct nouveau_channel*,int ) ;
 int RING_SPACE (struct nouveau_channel*,int) ;

__attribute__((used)) static int
nv04_fence_emit(struct nouveau_fence *fence)
{
 struct nouveau_channel *chan = fence->channel;
 int ret = RING_SPACE(chan, 2);
 if (ret == 0) {
  BEGIN_NV04(chan, NvSubSw, 0x0150, 1);
  OUT_RING (chan, fence->base.seqno);
  FIRE_RING (chan);
 }
 return ret;
}
