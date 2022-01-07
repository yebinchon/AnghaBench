
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_2__ {int base; int process; int message; int* data; int wait; } ;
struct nvkm_pmu {TYPE_1__ recv; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_warn (struct nvkm_subdev*,char*,char,char,char,char,int,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int wake_up (int *) ;

void
gt215_pmu_recv(struct nvkm_pmu *pmu)
{
 struct nvkm_subdev *subdev = &pmu->subdev;
 struct nvkm_device *device = subdev->device;
 u32 process, message, data0, data1;


 u32 addr = nvkm_rd32(device, 0x10a4cc);
 if (addr == nvkm_rd32(device, 0x10a4c8))
  return;


 do {
  nvkm_wr32(device, 0x10a580, 0x00000002);
 } while (nvkm_rd32(device, 0x10a580) != 0x00000002);


 nvkm_wr32(device, 0x10a1c0, 0x02000000 | (((addr & 0x07) << 4) +
    pmu->recv.base));
 process = nvkm_rd32(device, 0x10a1c4);
 message = nvkm_rd32(device, 0x10a1c4);
 data0 = nvkm_rd32(device, 0x10a1c4);
 data1 = nvkm_rd32(device, 0x10a1c4);
 nvkm_wr32(device, 0x10a4cc, (addr + 1) & 0x0f);


 nvkm_wr32(device, 0x10a580, 0x00000000);


 if (pmu->recv.process) {
  if (process == pmu->recv.process &&
      message == pmu->recv.message) {
   pmu->recv.data[0] = data0;
   pmu->recv.data[1] = data1;
   pmu->recv.process = 0;
   wake_up(&pmu->recv.wait);
   return;
  }
 }




 nvkm_warn(subdev, "%c%c%c%c %08x %08x %08x %08x\n",
    (char)((process & 0x000000ff) >> 0),
    (char)((process & 0x0000ff00) >> 8),
    (char)((process & 0x00ff0000) >> 16),
    (char)((process & 0xff000000) >> 24),
    process, message, data0, data1);
}
