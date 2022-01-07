
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_gr {TYPE_2__* func; } ;
struct nvkm_device {struct nvkm_gr* gr; } ;
struct TYPE_3__ {int (* inst ) (struct nvkm_gr*) ;} ;
struct TYPE_4__ {TYPE_1__ ctxsw; } ;


 int stub1 (struct nvkm_gr*) ;

u32
nvkm_gr_ctxsw_inst(struct nvkm_device *device)
{
 struct nvkm_gr *gr = device->gr;
 if (gr && gr->func->ctxsw.inst)
  return gr->func->ctxsw.inst(gr);
 return 0;
}
