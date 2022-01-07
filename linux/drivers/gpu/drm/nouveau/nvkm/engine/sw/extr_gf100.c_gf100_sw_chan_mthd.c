
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
typedef int u32 ;
struct nvkm_sw_chan {int dummy; } ;
struct TYPE_9__ {struct nvkm_device* device; } ;
struct nvkm_engine {TYPE_3__ subdev; } ;
struct nvkm_device {TYPE_5__* disp; } ;
struct TYPE_12__ {int offset; int value; int * notify; } ;
struct TYPE_7__ {struct nvkm_engine* engine; } ;
struct TYPE_8__ {TYPE_1__ object; } ;
struct nv50_sw_chan {TYPE_6__ vblank; TYPE_2__ base; } ;
struct TYPE_10__ {int index_nr; } ;
struct TYPE_11__ {TYPE_4__ vblank; } ;


 struct nv50_sw_chan* nv50_sw_chan (struct nvkm_sw_chan*) ;
 int nvkm_notify_get (int *) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static bool
gf100_sw_chan_mthd(struct nvkm_sw_chan *base, int subc, u32 mthd, u32 data)
{
 struct nv50_sw_chan *chan = nv50_sw_chan(base);
 struct nvkm_engine *engine = chan->base.object.engine;
 struct nvkm_device *device = engine->subdev.device;
 switch (mthd) {
 case 0x0400:
  chan->vblank.offset &= 0x00ffffffffULL;
  chan->vblank.offset |= (u64)data << 32;
  return 1;
 case 0x0404:
  chan->vblank.offset &= 0xff00000000ULL;
  chan->vblank.offset |= data;
  return 1;
 case 0x0408:
  chan->vblank.value = data;
  return 1;
 case 0x040c:
  if (data < device->disp->vblank.index_nr) {
   nvkm_notify_get(&chan->vblank.notify[data]);
   return 1;
  }
  break;
 case 0x600:
  nvkm_wr32(device, 0x419e00, data);
  return 1;
 case 0x644:
  if (!(data & ~0x001ffffe)) {
   nvkm_wr32(device, 0x419e44, data);
   return 1;
  }
  break;
 case 0x6ac:
  nvkm_wr32(device, 0x419eac, data);
  return 1;
 default:
  break;
 }
 return 0;
}
