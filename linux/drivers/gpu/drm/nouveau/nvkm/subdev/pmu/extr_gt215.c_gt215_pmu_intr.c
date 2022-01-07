
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_2__ {int work; } ;
struct nvkm_pmu {TYPE_1__ recv; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_error (struct nvkm_subdev*,char*,int,...) ;
 int nvkm_info (struct nvkm_subdev*,char*,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int schedule_work (int *) ;

void
gt215_pmu_intr(struct nvkm_pmu *pmu)
{
 struct nvkm_subdev *subdev = &pmu->subdev;
 struct nvkm_device *device = subdev->device;
 u32 disp = nvkm_rd32(device, 0x10a01c);
 u32 intr = nvkm_rd32(device, 0x10a008) & disp & ~(disp >> 16);

 if (intr & 0x00000020) {
  u32 stat = nvkm_rd32(device, 0x10a16c);
  if (stat & 0x80000000) {
   nvkm_error(subdev, "UAS fault at %06x addr %08x\n",
       stat & 0x00ffffff,
       nvkm_rd32(device, 0x10a168));
   nvkm_wr32(device, 0x10a16c, 0x00000000);
   intr &= ~0x00000020;
  }
 }

 if (intr & 0x00000040) {
  schedule_work(&pmu->recv.work);
  nvkm_wr32(device, 0x10a004, 0x00000040);
  intr &= ~0x00000040;
 }

 if (intr & 0x00000080) {
  nvkm_info(subdev, "wr32 %06x %08x\n",
     nvkm_rd32(device, 0x10a7a0),
     nvkm_rd32(device, 0x10a7a4));
  nvkm_wr32(device, 0x10a004, 0x00000080);
  intr &= ~0x00000080;
 }

 if (intr) {
  nvkm_error(subdev, "intr %08x\n", intr);
  nvkm_wr32(device, 0x10a004, intr);
 }
}
