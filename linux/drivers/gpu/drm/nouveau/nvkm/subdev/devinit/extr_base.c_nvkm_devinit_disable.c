
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_devinit {TYPE_1__* func; } ;
struct TYPE_2__ {int (* disable ) (struct nvkm_devinit*) ;} ;


 int stub1 (struct nvkm_devinit*) ;

u64
nvkm_devinit_disable(struct nvkm_devinit *init)
{
 if (init && init->func->disable)
  return init->func->disable(init);
 return 0;
}
