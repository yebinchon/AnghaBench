
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_falcon {int dummy; } ;


 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int ) ;

__attribute__((used)) static void
nvkm_falcon_v1_set_start_addr(struct nvkm_falcon *falcon, u32 start_addr)
{
 nvkm_falcon_wr32(falcon, 0x104, start_addr);
}
