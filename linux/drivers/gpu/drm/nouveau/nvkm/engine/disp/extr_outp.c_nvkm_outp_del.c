
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_outp {TYPE_1__* func; } ;
struct TYPE_2__ {struct nvkm_outp* (* dtor ) (struct nvkm_outp*) ;} ;


 int WARN_ON (int) ;
 int kfree (struct nvkm_outp*) ;
 struct nvkm_outp* stub1 (struct nvkm_outp*) ;

void
nvkm_outp_del(struct nvkm_outp **poutp)
{
 struct nvkm_outp *outp = *poutp;
 if (outp && !WARN_ON(!outp->func)) {
  if (outp->func->dtor)
   *poutp = outp->func->dtor(outp);
  kfree(*poutp);
  *poutp = ((void*)0);
 }
}
