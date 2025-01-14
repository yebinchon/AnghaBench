
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_device {int mpeg; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct nv31_mpeg {TYPE_1__ engine; } ;


 struct nv31_mpeg* nv31_mpeg (int ) ;
 int nvkm_error (struct nvkm_subdev*,char*,int,int,int,int) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static bool
nv31_mpeg_mthd_dma(struct nvkm_device *device, u32 mthd, u32 data)
{
 struct nv31_mpeg *mpeg = nv31_mpeg(device->mpeg);
 struct nvkm_subdev *subdev = &mpeg->engine.subdev;
 u32 inst = data << 4;
 u32 dma0 = nvkm_rd32(device, 0x700000 + inst);
 u32 dma1 = nvkm_rd32(device, 0x700004 + inst);
 u32 dma2 = nvkm_rd32(device, 0x700008 + inst);
 u32 base = (dma2 & 0xfffff000) | (dma0 >> 20);
 u32 size = dma1 + 1;


 if (!(dma0 & 0x00002000)) {
  nvkm_error(subdev, "inst %08x dma0 %08x dma1 %08x dma2 %08x\n",
      inst, dma0, dma1, dma2);
  return 0;
 }

 if (mthd == 0x0190) {

  nvkm_mask(device, 0x00b300, 0x00010000,
      (dma0 & 0x00030000) ? 0x00010000 : 0);
  nvkm_wr32(device, 0x00b334, base);
  nvkm_wr32(device, 0x00b324, size);
 } else
 if (mthd == 0x01a0) {

  nvkm_mask(device, 0x00b300, 0x00020000,
      (dma0 & 0x00030000) ? 0x00020000 : 0);
  nvkm_wr32(device, 0x00b360, base);
  nvkm_wr32(device, 0x00b364, size);
 } else {

  if (dma0 & 0x00030000)
   return 0;

  nvkm_wr32(device, 0x00b370, base);
  nvkm_wr32(device, 0x00b374, size);
 }

 return 1;
}
