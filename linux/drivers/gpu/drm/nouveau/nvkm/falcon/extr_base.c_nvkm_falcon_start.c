
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_falcon {TYPE_1__* func; } ;
struct TYPE_2__ {int (* start ) (struct nvkm_falcon*) ;} ;


 int stub1 (struct nvkm_falcon*) ;

void
nvkm_falcon_start(struct nvkm_falcon *falcon)
{
 falcon->func->start(falcon);
}
