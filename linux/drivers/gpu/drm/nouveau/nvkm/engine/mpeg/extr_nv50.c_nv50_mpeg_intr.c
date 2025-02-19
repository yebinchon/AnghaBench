
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_info (struct nvkm_subdev*,char*,int,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

void
nv50_mpeg_intr(struct nvkm_engine *mpeg)
{
 struct nvkm_subdev *subdev = &mpeg->subdev;
 struct nvkm_device *device = subdev->device;
 u32 stat = nvkm_rd32(device, 0x00b100);
 u32 type = nvkm_rd32(device, 0x00b230);
 u32 mthd = nvkm_rd32(device, 0x00b234);
 u32 data = nvkm_rd32(device, 0x00b238);
 u32 show = stat;

 if (stat & 0x01000000) {

  if (type == 0x00000020 && mthd == 0x0000) {
   nvkm_wr32(device, 0x00b308, 0x00000100);
   show &= ~0x01000000;
  }
 }

 if (show) {
  nvkm_info(subdev, "%08x %08x %08x %08x\n",
     stat, type, mthd, data);
 }

 nvkm_wr32(device, 0x00b100, stat);
 nvkm_wr32(device, 0x00b230, 0x00000001);
}
