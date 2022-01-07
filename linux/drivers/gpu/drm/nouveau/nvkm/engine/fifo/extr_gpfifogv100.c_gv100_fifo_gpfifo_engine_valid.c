
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {int mutex; struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {int inst; TYPE_2__* fifo; } ;
struct gk104_fifo_chan {int runl; TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {TYPE_1__ engine; } ;


 int BIT (int ) ;
 int gk104_fifo_gpfifo_kick_locked (struct gk104_fifo_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_done (int ) ;
 int nvkm_kmap (int ) ;
 int nvkm_mask (struct nvkm_device*,int,int ,int ) ;
 int nvkm_mo32 (int ,int,int const,int const) ;

__attribute__((used)) static int
gv100_fifo_gpfifo_engine_valid(struct gk104_fifo_chan *chan, bool ce, bool valid)
{
 struct nvkm_subdev *subdev = &chan->base.fifo->engine.subdev;
 struct nvkm_device *device = subdev->device;
 const u32 mask = ce ? 0x00020000 : 0x00010000;
 const u32 data = valid ? mask : 0x00000000;
 int ret;


 mutex_lock(&subdev->mutex);
 nvkm_mask(device, 0x002630, BIT(chan->runl), BIT(chan->runl));


 ret = gk104_fifo_gpfifo_kick_locked(chan);
 if (ret == 0) {

  nvkm_kmap(chan->base.inst);
  nvkm_mo32(chan->base.inst, 0x0ac, mask, data);
  nvkm_done(chan->base.inst);
 }


 nvkm_mask(device, 0x002630, BIT(chan->runl), 0);
 mutex_unlock(&subdev->mutex);
 return ret;
}
