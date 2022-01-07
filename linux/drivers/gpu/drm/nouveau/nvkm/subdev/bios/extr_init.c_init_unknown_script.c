
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvkm_bios {int dummy; } ;


 int init_table (struct nvkm_bios*,int*) ;
 int nvbios_rd16 (struct nvkm_bios*,int) ;

__attribute__((used)) static u16
init_unknown_script(struct nvkm_bios *bios)
{
 u16 len, data = init_table(bios, &len);
 if (data && len >= 16)
  return nvbios_rd16(bios, data + 14);
 return 0x0000;
}
