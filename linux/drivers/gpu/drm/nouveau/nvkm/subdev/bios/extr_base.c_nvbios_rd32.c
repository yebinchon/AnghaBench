
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct nvkm_bios {int * data; } ;


 size_t get_unaligned_le32 (int *) ;
 scalar_t__ likely (int ) ;
 int nvbios_addr (struct nvkm_bios*,size_t*,int) ;

u32
nvbios_rd32(struct nvkm_bios *bios, u32 addr)
{
 if (likely(nvbios_addr(bios, &addr, 4)))
  return get_unaligned_le32(&bios->data[addr]);
 return 0x00000000;
}
