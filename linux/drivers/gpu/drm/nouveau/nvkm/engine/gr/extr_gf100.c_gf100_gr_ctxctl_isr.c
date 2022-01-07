
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct gf100_gr {int firmware; TYPE_2__ base; } ;


 int E_BAD_FWMTHD ;
 int gf100_gr_ctxctl_debug (struct gf100_gr*) ;
 int nvkm_error (struct nvkm_subdev*,char*,...) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gf100_gr_ctxctl_isr(struct gf100_gr *gr)
{
 struct nvkm_subdev *subdev = &gr->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, 0x409c18);

 if (!gr->firmware && (stat & 0x00000001)) {
  u32 code = nvkm_rd32(device, 0x409814);
  if (code == E_BAD_FWMTHD) {
   u32 class = nvkm_rd32(device, 0x409808);
   u32 addr = nvkm_rd32(device, 0x40980c);
   u32 subc = (addr & 0x00070000) >> 16;
   u32 mthd = (addr & 0x00003ffc);
   u32 data = nvkm_rd32(device, 0x409810);

   nvkm_error(subdev, "FECS MTHD subc %d class %04x "
        "mthd %04x data %08x\n",
       subc, class, mthd, data);
  } else {
   nvkm_error(subdev, "FECS ucode error %d\n", code);
  }
  nvkm_wr32(device, 0x409c20, 0x00000001);
  stat &= ~0x00000001;
 }

 if (!gr->firmware && (stat & 0x00080000)) {
  nvkm_error(subdev, "FECS watchdog timeout\n");
  gf100_gr_ctxctl_debug(gr);
  nvkm_wr32(device, 0x409c20, 0x00080000);
  stat &= ~0x00080000;
 }

 if (stat) {
  nvkm_error(subdev, "FECS %08x\n", stat);
  gf100_gr_ctxctl_debug(gr);
  nvkm_wr32(device, 0x409c20, stat);
 }
}
