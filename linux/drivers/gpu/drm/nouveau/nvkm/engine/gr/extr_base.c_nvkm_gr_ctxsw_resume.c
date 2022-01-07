
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_gr {TYPE_2__* func; } ;
struct nvkm_device {struct nvkm_gr* gr; } ;
struct TYPE_3__ {int (* resume ) (struct nvkm_gr*) ;} ;
struct TYPE_4__ {TYPE_1__ ctxsw; } ;


 int stub1 (struct nvkm_gr*) ;

int
nvkm_gr_ctxsw_resume(struct nvkm_device *device)
{
 struct nvkm_gr *gr = device->gr;
 if (gr && gr->func->ctxsw.resume)
  return gr->func->ctxsw.resume(gr);
 return 0;
}
