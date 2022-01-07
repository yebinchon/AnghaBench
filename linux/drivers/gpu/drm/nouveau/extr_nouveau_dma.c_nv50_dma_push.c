
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct nvif_user {TYPE_5__* func; } ;
struct TYPE_12__ {int ib_put; int ib_base; int ib_free; int ib_max; } ;
struct TYPE_10__ {struct nouveau_bo* buffer; } ;
struct nouveau_channel {TYPE_6__ dma; int token; int user; TYPE_4__ push; TYPE_3__* drm; } ;
struct nouveau_bo {int dummy; } ;
struct TYPE_11__ {int (* doorbell ) (struct nvif_user*,int ) ;} ;
struct TYPE_7__ {struct nvif_user user; } ;
struct TYPE_8__ {TYPE_1__ device; } ;
struct TYPE_9__ {TYPE_2__ client; } ;


 int BUG_ON (int) ;
 int lower_32_bits (int ) ;
 int mb () ;
 int nouveau_bo_rd32 (struct nouveau_bo*,int ) ;
 int nouveau_bo_wr32 (struct nouveau_bo*,int ,int) ;
 int nvif_wr32 (int *,int,int) ;
 int stub1 (struct nvif_user*,int ) ;
 int upper_32_bits (int ) ;

void
nv50_dma_push(struct nouveau_channel *chan, u64 offset, int length)
{
 struct nvif_user *user = &chan->drm->client.device.user;
 struct nouveau_bo *pb = chan->push.buffer;
 int ip = (chan->dma.ib_put * 2) + chan->dma.ib_base;

 BUG_ON(chan->dma.ib_free < 1);

 nouveau_bo_wr32(pb, ip++, lower_32_bits(offset));
 nouveau_bo_wr32(pb, ip++, upper_32_bits(offset) | length << 8);

 chan->dma.ib_put = (chan->dma.ib_put + 1) & chan->dma.ib_max;

 mb();

 nouveau_bo_rd32(pb, 0);

 nvif_wr32(&chan->user, 0x8c, chan->dma.ib_put);
 if (user->func && user->func->doorbell)
  user->func->doorbell(user, chan->token);
 chan->dma.ib_free--;
}
