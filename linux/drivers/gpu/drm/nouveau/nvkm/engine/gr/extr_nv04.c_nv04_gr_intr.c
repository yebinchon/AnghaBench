
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_gr {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* client; } ;
struct nv04_gr_chan {TYPE_4__ object; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;
struct nv04_gr {int lock; struct nv04_gr_chan** chan; TYPE_2__ base; } ;
typedef int sta ;
typedef int src ;
typedef int msg ;
struct TYPE_7__ {char* name; } ;


 int NV03_PGRAPH_INTR ;
 int NV03_PGRAPH_NSOURCE ;
 int NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD ;
 int NV03_PGRAPH_NSTATUS ;
 int NV04_PGRAPH_FIFO ;
 int NV04_PGRAPH_TRAPPED_ADDR ;
 int NV04_PGRAPH_TRAPPED_DATA ;
 int NV_PGRAPH_INTR_CONTEXT_SWITCH ;
 int NV_PGRAPH_INTR_NOTIFY ;
 struct nv04_gr* nv04_gr (struct nvkm_gr*) ;
 int nv04_gr_context_switch (struct nv04_gr*) ;
 int nv04_gr_intr_name ;
 int nv04_gr_mthd (struct nvkm_device*,int,int,int) ;
 int nv04_gr_nsource ;
 int nv04_gr_nstatus ;
 int nvkm_error (struct nvkm_subdev*,char*,int,char*,int,char*,int,char*,int,char*,int,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_snprintbf (char*,int,int ,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nv04_gr_intr(struct nvkm_gr *base)
{
 struct nv04_gr *gr = nv04_gr(base);
 struct nvkm_subdev *subdev = &gr->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, NV03_PGRAPH_INTR);
 u32 nsource = nvkm_rd32(device, NV03_PGRAPH_NSOURCE);
 u32 nstatus = nvkm_rd32(device, NV03_PGRAPH_NSTATUS);
 u32 addr = nvkm_rd32(device, NV04_PGRAPH_TRAPPED_ADDR);
 u32 chid = (addr & 0x0f000000) >> 24;
 u32 subc = (addr & 0x0000e000) >> 13;
 u32 mthd = (addr & 0x00001ffc);
 u32 data = nvkm_rd32(device, NV04_PGRAPH_TRAPPED_DATA);
 u32 class = nvkm_rd32(device, 0x400180 + subc * 4) & 0xff;
 u32 inst = (nvkm_rd32(device, 0x40016c) & 0xffff) << 4;
 u32 show = stat;
 char msg[128], src[128], sta[128];
 struct nv04_gr_chan *chan;
 unsigned long flags;

 spin_lock_irqsave(&gr->lock, flags);
 chan = gr->chan[chid];

 if (stat & NV_PGRAPH_INTR_NOTIFY) {
  if (chan && (nsource & NV03_PGRAPH_NSOURCE_ILLEGAL_MTHD)) {
   if (!nv04_gr_mthd(device, inst, mthd, data))
    show &= ~NV_PGRAPH_INTR_NOTIFY;
  }
 }

 if (stat & NV_PGRAPH_INTR_CONTEXT_SWITCH) {
  nvkm_wr32(device, NV03_PGRAPH_INTR, NV_PGRAPH_INTR_CONTEXT_SWITCH);
  stat &= ~NV_PGRAPH_INTR_CONTEXT_SWITCH;
  show &= ~NV_PGRAPH_INTR_CONTEXT_SWITCH;
  nv04_gr_context_switch(gr);
 }

 nvkm_wr32(device, NV03_PGRAPH_INTR, stat);
 nvkm_wr32(device, NV04_PGRAPH_FIFO, 0x00000001);

 if (show) {
  nvkm_snprintbf(msg, sizeof(msg), nv04_gr_intr_name, show);
  nvkm_snprintbf(src, sizeof(src), nv04_gr_nsource, nsource);
  nvkm_snprintbf(sta, sizeof(sta), nv04_gr_nstatus, nstatus);
  nvkm_error(subdev, "intr %08x [%s] nsource %08x [%s] "
       "nstatus %08x [%s] ch %d [%s] subc %d "
       "class %04x mthd %04x data %08x\n",
      show, msg, nsource, src, nstatus, sta, chid,
      chan ? chan->object.client->name : "unknown",
      subc, class, mthd, data);
 }

 spin_unlock_irqrestore(&gr->lock, flags);
}
