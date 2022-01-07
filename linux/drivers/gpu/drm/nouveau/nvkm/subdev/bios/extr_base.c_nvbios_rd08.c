
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct nvkm_bios {int* data; } ;


 scalar_t__ likely (int ) ;
 int nvbios_addr (struct nvkm_bios*,size_t*,int) ;

u8
nvbios_rd08(struct nvkm_bios *bios, u32 addr)
{
 if (likely(nvbios_addr(bios, &addr, 1)))
  return bios->data[addr];
 return 0x00;
}
