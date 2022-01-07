
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_devinit {TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_devinit*) ;} ;


 struct nvkm_devinit* nvkm_devinit (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_devinit*) ;

__attribute__((used)) static int
nvkm_devinit_init(struct nvkm_subdev *subdev)
{
 struct nvkm_devinit *init = nvkm_devinit(subdev);
 if (init->func->init)
  init->func->init(init);
 return 0;
}
