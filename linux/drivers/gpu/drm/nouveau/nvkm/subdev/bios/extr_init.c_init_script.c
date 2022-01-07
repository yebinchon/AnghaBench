
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvkm_bios {int bmp_offset; int subdev; } ;
struct nvbios_init {int * subdev; } ;


 int bmp_version (struct nvkm_bios*) ;
 int init_script_table (struct nvbios_init*) ;
 int nvbios_rd16 (struct nvkm_bios*,int) ;

__attribute__((used)) static u16
init_script(struct nvkm_bios *bios, int index)
{
 struct nvbios_init init = { .subdev = &bios->subdev };
 u16 bmp_ver = bmp_version(bios), data;

 if (bmp_ver && bmp_ver < 0x0510) {
  if (index > 1 || bmp_ver < 0x0100)
   return 0x0000;

  data = bios->bmp_offset + (bmp_ver < 0x0200 ? 14 : 18);
  return nvbios_rd16(bios, data + (index * 2));
 }

 data = init_script_table(&init);
 if (data)
  return nvbios_rd16(bios, data + (index * 2));

 return 0x0000;
}
