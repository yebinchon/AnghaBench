
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int device; } ;
struct nvkm_mc {TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_mc*) ;} ;


 struct nvkm_mc* nvkm_mc (struct nvkm_subdev*) ;
 int nvkm_mc_intr_rearm (int ) ;
 int stub1 (struct nvkm_mc*) ;

__attribute__((used)) static int
nvkm_mc_init(struct nvkm_subdev *subdev)
{
 struct nvkm_mc *mc = nvkm_mc(subdev);
 if (mc->func->init)
  mc->func->init(mc);
 nvkm_mc_intr_rearm(subdev->device);
 return 0;
}
