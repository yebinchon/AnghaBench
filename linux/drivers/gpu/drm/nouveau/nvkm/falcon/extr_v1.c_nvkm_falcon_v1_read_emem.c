
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvkm_falcon {int dummy; } ;


 int nvkm_falcon_rd32 (struct nvkm_falcon*,int) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;

__attribute__((used)) static void
nvkm_falcon_v1_read_emem(struct nvkm_falcon *falcon, u32 start, u32 size,
    u8 port, void *data)
{
 u8 rem = size % 4;
 int i;

 size -= rem;

 nvkm_falcon_wr32(falcon, 0xac0 + (port * 8), start | (0x1 << 25));
 for (i = 0; i < size / 4; i++)
  ((u32 *)data)[i] = nvkm_falcon_rd32(falcon, 0xac4 + (port * 8));





 if (rem) {
  u32 extra = nvkm_falcon_rd32(falcon, 0xac4 + (port * 8));

  for (i = size; i < size + rem; i++) {
   ((u8 *)data)[i] = (u8)(extra & 0xff);
   extra >>= 8;
  }
 }
}
