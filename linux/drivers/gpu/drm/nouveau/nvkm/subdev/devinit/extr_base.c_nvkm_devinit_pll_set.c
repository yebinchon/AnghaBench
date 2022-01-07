
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_devinit {TYPE_1__* func; } ;
struct TYPE_2__ {int (* pll_set ) (struct nvkm_devinit*,int ,int ) ;} ;


 int stub1 (struct nvkm_devinit*,int ,int ) ;

int
nvkm_devinit_pll_set(struct nvkm_devinit *init, u32 type, u32 khz)
{
 return init->func->pll_set(init, type, khz);
}
