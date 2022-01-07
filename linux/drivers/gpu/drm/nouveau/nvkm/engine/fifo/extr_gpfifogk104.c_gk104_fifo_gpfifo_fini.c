
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_fifo_chan {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {int chid; } ;
struct gk104_fifo_chan {int runl; int head; TYPE_4__ base; struct gk104_fifo* fifo; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_3__ base; } ;


 struct gk104_fifo_chan* gk104_fifo_chan (struct nvkm_fifo_chan*) ;
 int gk104_fifo_gpfifo_kick (struct gk104_fifo_chan*) ;
 int gk104_fifo_runlist_remove (struct gk104_fifo*,struct gk104_fifo_chan*) ;
 int gk104_fifo_runlist_update (struct gk104_fifo*,int ) ;
 int list_empty (int *) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
gk104_fifo_gpfifo_fini(struct nvkm_fifo_chan *base)
{
 struct gk104_fifo_chan *chan = gk104_fifo_chan(base);
 struct gk104_fifo *fifo = chan->fifo;
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 u32 coff = chan->base.chid * 8;

 if (!list_empty(&chan->head)) {
  gk104_fifo_runlist_remove(fifo, chan);
  nvkm_mask(device, 0x800004 + coff, 0x00000800, 0x00000800);
  gk104_fifo_gpfifo_kick(chan);
  gk104_fifo_runlist_update(fifo, chan->runl);
 }

 nvkm_wr32(device, 0x800000 + coff, 0x00000000);
}
