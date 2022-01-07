
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct nvkm_bios {int * data; } ;


 int get_unaligned_le16 (int *) ;
 scalar_t__ likely (int ) ;
 int nvbios_addr (struct nvkm_bios*,size_t*,int) ;

u16
nvbios_rd16(struct nvkm_bios *bios, u32 addr)
{
 if (likely(nvbios_addr(bios, &addr, 2)))
  return get_unaligned_le16(&bios->data[addr]);
 return 0x0000;
}
