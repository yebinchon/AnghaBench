
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_gr {int dummy; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_fb_tile {int addr; int limit; int pitch; } ;
struct nvkm_device {int chipset; struct nvkm_fifo* fifo; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv40_gr {TYPE_3__ base; } ;


 int NV20_PGRAPH_TILE (int) ;
 int NV20_PGRAPH_TLIMIT (int) ;
 int NV20_PGRAPH_TSIZE (int) ;
 int NV40_PGRAPH_TILE1 (int) ;
 int NV40_PGRAPH_TLIMIT1 (int) ;
 int NV40_PGRAPH_TSIZE1 (int) ;
 int NV47_PGRAPH_TILE (int) ;
 int NV47_PGRAPH_TLIMIT (int) ;
 int NV47_PGRAPH_TSIZE (int) ;
 int WARN_ON (int) ;
 int nv04_gr_idle (TYPE_3__*) ;
 struct nv40_gr* nv40_gr (struct nvkm_gr*) ;
 int nvkm_fifo_pause (struct nvkm_fifo*,unsigned long*) ;
 int nvkm_fifo_start (struct nvkm_fifo*,unsigned long*) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int ) ;

__attribute__((used)) static void
nv44_gr_tile(struct nvkm_gr *base, int i, struct nvkm_fb_tile *tile)
{
 struct nv40_gr *gr = nv40_gr(base);
 struct nvkm_device *device = gr->base.engine.subdev.device;
 struct nvkm_fifo *fifo = device->fifo;
 unsigned long flags;

 nvkm_fifo_pause(fifo, &flags);
 nv04_gr_idle(&gr->base);

 switch (device->chipset) {
 case 0x44:
 case 0x4a:
  nvkm_wr32(device, NV20_PGRAPH_TSIZE(i), tile->pitch);
  nvkm_wr32(device, NV20_PGRAPH_TLIMIT(i), tile->limit);
  nvkm_wr32(device, NV20_PGRAPH_TILE(i), tile->addr);
  break;
 case 0x46:
 case 0x4c:
 case 0x63:
 case 0x67:
 case 0x68:
  nvkm_wr32(device, NV47_PGRAPH_TSIZE(i), tile->pitch);
  nvkm_wr32(device, NV47_PGRAPH_TLIMIT(i), tile->limit);
  nvkm_wr32(device, NV47_PGRAPH_TILE(i), tile->addr);
  nvkm_wr32(device, NV40_PGRAPH_TSIZE1(i), tile->pitch);
  nvkm_wr32(device, NV40_PGRAPH_TLIMIT1(i), tile->limit);
  nvkm_wr32(device, NV40_PGRAPH_TILE1(i), tile->addr);
  break;
 case 0x4e:
  nvkm_wr32(device, NV20_PGRAPH_TSIZE(i), tile->pitch);
  nvkm_wr32(device, NV20_PGRAPH_TLIMIT(i), tile->limit);
  nvkm_wr32(device, NV20_PGRAPH_TILE(i), tile->addr);
  nvkm_wr32(device, NV40_PGRAPH_TSIZE1(i), tile->pitch);
  nvkm_wr32(device, NV40_PGRAPH_TLIMIT1(i), tile->limit);
  nvkm_wr32(device, NV40_PGRAPH_TILE1(i), tile->addr);
  break;
 default:
  WARN_ON(1);
  break;
 }

 nvkm_fifo_start(fifo, &flags);
}
