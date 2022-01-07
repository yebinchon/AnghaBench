
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvkm_falcon {int dummy; } ;


 int BIT (int) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;

__attribute__((used)) static void
nvkm_falcon_v1_load_imem(struct nvkm_falcon *falcon, void *data, u32 start,
    u32 size, u16 tag, u8 port, bool secure)
{
 u8 rem = size % 4;
 u32 reg;
 int i;

 size -= rem;

 reg = start | BIT(24) | (secure ? BIT(28) : 0);
 nvkm_falcon_wr32(falcon, 0x180 + (port * 16), reg);
 for (i = 0; i < size / 4; i++) {

  if ((i & 0x3f) == 0)
   nvkm_falcon_wr32(falcon, 0x188 + (port * 16), tag++);
  nvkm_falcon_wr32(falcon, 0x184 + (port * 16), ((u32 *)data)[i]);
 }





 if (rem) {
  u32 extra = ((u32 *)data)[i];


  if ((i & 0x3f) == 0)
   nvkm_falcon_wr32(falcon, 0x188 + (port * 16), tag++);
  nvkm_falcon_wr32(falcon, 0x184 + (port * 16),
     extra & (BIT(rem * 8) - 1));
  ++i;
 }


 for (; i & 0x3f; i++)
  nvkm_falcon_wr32(falcon, 0x184 + (port * 16), 0);
}
