
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int link; } ;
struct TYPE_6__ {TYPE_2__ sorconf; } ;
struct nvkm_outp {int acquired; TYPE_3__ info; struct nvkm_ior* ior; } ;
struct TYPE_4__ {int link; struct nvkm_outp* outp; } ;
struct nvkm_ior {TYPE_1__ asy; } ;



__attribute__((used)) static inline int
nvkm_outp_acquire_ior(struct nvkm_outp *outp, u8 user, struct nvkm_ior *ior)
{
 outp->ior = ior;
 outp->ior->asy.outp = outp;
 outp->ior->asy.link = outp->info.sorconf.link;
 outp->acquired |= user;
 return 0;
}
