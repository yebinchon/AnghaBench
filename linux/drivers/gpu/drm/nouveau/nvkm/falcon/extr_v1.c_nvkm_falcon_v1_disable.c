
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_falcon {int dummy; } ;


 int falcon_v1_wait_idle (struct nvkm_falcon*) ;
 int nvkm_falcon_wr32 (struct nvkm_falcon*,int,int) ;

__attribute__((used)) static void
nvkm_falcon_v1_disable(struct nvkm_falcon *falcon)
{

 nvkm_falcon_wr32(falcon, 0x014, 0xff);
 falcon_v1_wait_idle(falcon);
}
