
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_devinit {TYPE_1__* func; } ;
struct TYPE_2__ {int (* meminit ) (struct nvkm_devinit*) ;} ;


 int stub1 (struct nvkm_devinit*) ;

void
nvkm_devinit_meminit(struct nvkm_devinit *init)
{
 if (init->func->meminit)
  init->func->meminit(init);
}
