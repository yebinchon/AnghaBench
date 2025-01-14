
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
struct nv50_fifo_chan {TYPE_4__ base; struct nv50_fifo* fifo; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct nv50_fifo {TYPE_3__ base; } ;


 struct nv50_fifo_chan* nv50_fifo_chan (struct nvkm_fifo_chan*) ;
 int nv50_fifo_runlist_update (struct nv50_fifo*) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv50_fifo_chan_fini(struct nvkm_fifo_chan *base)
{
 struct nv50_fifo_chan *chan = nv50_fifo_chan(base);
 struct nv50_fifo *fifo = chan->fifo;
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 u32 chid = chan->base.chid;


 nvkm_mask(device, 0x002600 + (chid * 4), 0x80000000, 0x00000000);
 nv50_fifo_runlist_update(fifo);
 nvkm_wr32(device, 0x002600 + (chid * 4), 0x00000000);
}
