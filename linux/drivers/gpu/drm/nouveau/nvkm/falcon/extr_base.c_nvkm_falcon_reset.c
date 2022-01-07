
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_falcon {int dummy; } ;


 int nvkm_falcon_disable (struct nvkm_falcon*) ;
 int nvkm_falcon_enable (struct nvkm_falcon*) ;

int
nvkm_falcon_reset(struct nvkm_falcon *falcon)
{
 nvkm_falcon_disable(falcon);
 return nvkm_falcon_enable(falcon);
}
