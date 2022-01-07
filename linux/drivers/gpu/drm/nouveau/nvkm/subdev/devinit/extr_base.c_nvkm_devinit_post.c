
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_devinit {int post; TYPE_1__* func; } ;
struct TYPE_2__ {int (* post ) (struct nvkm_devinit*,int ) ;} ;


 int nvkm_devinit_disable (struct nvkm_devinit*) ;
 int stub1 (struct nvkm_devinit*,int ) ;

int
nvkm_devinit_post(struct nvkm_devinit *init, u64 *disable)
{
 int ret = 0;
 if (init && init->func->post)
  ret = init->func->post(init, init->post);
 *disable = nvkm_devinit_disable(init);
 return ret;
}
