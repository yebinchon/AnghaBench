
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_outp {TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_outp*) ;} ;


 int nvkm_outp_init_route (struct nvkm_outp*) ;
 int stub1 (struct nvkm_outp*) ;

void
nvkm_outp_init(struct nvkm_outp *outp)
{
 nvkm_outp_init_route(outp);
 if (outp->func->init)
  outp->func->init(outp);
}
