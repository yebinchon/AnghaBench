
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_falcon {int dummy; } ;


 int BIT (int) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;

__attribute__((used)) static void
nvkm_falcon_v1_load_emem(struct nvkm_falcon *falcon, void *data, u32 start,
    u32 size, u8 port)
{
 u8 rem = size % 4;
 int i;

 size -= rem;

 nvkm_falcon_wr32(falcon, 0xac0 + (port * 8), start | (0x1 << 24));
 for (i = 0; i < size / 4; i++)
  nvkm_falcon_wr32(falcon, 0xac4 + (port * 8), ((u32 *)data)[i]);





 if (rem) {
  u32 extra = ((u32 *)data)[i];

  nvkm_falcon_wr32(falcon, 0xac4 + (port * 8),
     extra & (BIT(rem * 8) - 1));
 }
}
