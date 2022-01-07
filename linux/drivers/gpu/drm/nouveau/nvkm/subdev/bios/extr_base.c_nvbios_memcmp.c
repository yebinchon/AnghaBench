
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_bios {int dummy; } ;


 unsigned char nvbios_rd08 (struct nvkm_bios*,int ) ;

int
nvbios_memcmp(struct nvkm_bios *bios, u32 addr, const char *str, u32 len)
{
 unsigned char c1, c2;

 while (len--) {
  c1 = nvbios_rd08(bios, addr++);
  c2 = *(str++);
  if (c1 != c2)
   return c1 - c2;
 }
 return 0;
}
