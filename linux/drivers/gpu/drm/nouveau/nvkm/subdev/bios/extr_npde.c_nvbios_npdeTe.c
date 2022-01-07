
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvkm_bios {int subdev; } ;
struct nvbios_pcirT {int dummy; } ;


 int nvbios_pcirTp (struct nvkm_bios*,int,int *,int*,struct nvbios_pcirT*) ;
 int nvbios_rd32 (struct nvkm_bios*,int) ;
 int nvkm_debug (int *,char*,int,int) ;

u32
nvbios_npdeTe(struct nvkm_bios *bios, u32 base)
{
 struct nvbios_pcirT pcir;
 u8 ver; u16 hdr;
 u32 data = nvbios_pcirTp(bios, base, &ver, &hdr, &pcir);
 if (data = (data + hdr + 0x0f) & ~0x0f, data) {
  switch (nvbios_rd32(bios, data + 0x00)) {
  case 0x4544504e:
   break;
  default:
   nvkm_debug(&bios->subdev,
       "%08x: NPDE signature (%08x) unknown\n",
       data, nvbios_rd32(bios, data + 0x00));
   data = 0;
   break;
  }
 }
 return data;
}
