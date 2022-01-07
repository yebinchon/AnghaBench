
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_outp {struct nvkm_ior* ior; TYPE_1__* func; int acquired; } ;
struct TYPE_4__ {int * outp; } ;
struct nvkm_ior {TYPE_2__ asy; } ;
struct TYPE_3__ {int (* release ) (struct nvkm_outp*) ;} ;


 int OUTP_TRACE (struct nvkm_outp*,char*,int ,int ,struct nvkm_ior*) ;
 int stub1 (struct nvkm_outp*) ;

void
nvkm_outp_release(struct nvkm_outp *outp, u8 user)
{
 struct nvkm_ior *ior = outp->ior;
 OUTP_TRACE(outp, "release %02x &= %02x %p", outp->acquired, ~user, ior);
 if (ior) {
  outp->acquired &= ~user;
  if (!outp->acquired) {
   if (outp->func->release && outp->ior)
    outp->func->release(outp);
   outp->ior->asy.outp = ((void*)0);
   outp->ior = ((void*)0);
  }
 }
}
