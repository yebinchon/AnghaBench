
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_gr {int dummy; } ;
struct TYPE_8__ {TYPE_3__* client; } ;
struct nvkm_fifo_chan {int chid; TYPE_4__ object; } ;
struct nvkm_enum {char* name; } ;
struct nvkm_device {int fifo; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;
struct nv50_gr {TYPE_2__ base; } ;
typedef int msg ;
struct TYPE_7__ {char* name; } ;


 int nv50_data_error_names ;
 struct nv50_gr* nv50_gr (struct nvkm_gr*) ;
 int nv50_gr_intr_name ;
 int nv50_gr_trap_handler (struct nv50_gr*,int,int,int,char const*) ;
 struct nvkm_enum* nvkm_enum_find (int ,int) ;
 int nvkm_error (struct nvkm_subdev*,char*,int,char*,...) ;
 struct nvkm_fifo_chan* nvkm_fifo_chan_inst (int ,int,unsigned long*) ;
 int nvkm_fifo_chan_put (int ,unsigned long,struct nvkm_fifo_chan**) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_snprintbf (char*,int,int ,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv50_gr_intr(struct nvkm_gr *base)
{
 struct nv50_gr *gr = nv50_gr(base);
 struct nvkm_subdev *subdev = &gr->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 struct nvkm_fifo_chan *chan;
 u32 stat = nvkm_rd32(device, 0x400100);
 u32 inst = nvkm_rd32(device, 0x40032c) & 0x0fffffff;
 u32 addr = nvkm_rd32(device, 0x400704);
 u32 subc = (addr & 0x00070000) >> 16;
 u32 mthd = (addr & 0x00001ffc);
 u32 data = nvkm_rd32(device, 0x400708);
 u32 class = nvkm_rd32(device, 0x400814);
 u32 show = stat, show_bitfield = stat;
 const struct nvkm_enum *en;
 unsigned long flags;
 const char *name = "unknown";
 char msg[128];
 int chid = -1;

 chan = nvkm_fifo_chan_inst(device->fifo, (u64)inst << 12, &flags);
 if (chan) {
  name = chan->object.client->name;
  chid = chan->chid;
 }

 if (show & 0x00100000) {
  u32 ecode = nvkm_rd32(device, 0x400110);
  en = nvkm_enum_find(nv50_data_error_names, ecode);
  nvkm_error(subdev, "DATA_ERROR %08x [%s]\n",
      ecode, en ? en->name : "");
  show_bitfield &= ~0x00100000;
 }

 if (stat & 0x00200000) {
  if (!nv50_gr_trap_handler(gr, show, chid, (u64)inst << 12, name))
   show &= ~0x00200000;
  show_bitfield &= ~0x00200000;
 }

 nvkm_wr32(device, 0x400100, stat);
 nvkm_wr32(device, 0x400500, 0x00010001);

 if (show) {
  show &= show_bitfield;
  nvkm_snprintbf(msg, sizeof(msg), nv50_gr_intr_name, show);
  nvkm_error(subdev, "%08x [%s] ch %d [%010llx %s] subc %d "
       "class %04x mthd %04x data %08x\n",
      stat, msg, chid, (u64)inst << 12, name,
      subc, class, mthd, data);
 }

 if (nvkm_rd32(device, 0x400824) & (1 << 31))
  nvkm_wr32(device, 0x400824, nvkm_rd32(device, 0x400824) & ~(1 << 31));

 nvkm_fifo_chan_put(device->fifo, flags, &chan);
}
