
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int device; } ;
struct nvkm_devinit {TYPE_1__* func; } ;
struct TYPE_2__ {void* (* dtor ) (struct nvkm_devinit*) ;} ;


 struct nvkm_devinit* nvkm_devinit (struct nvkm_subdev*) ;
 int nvkm_lockvgac (int ,int) ;
 void* stub1 (struct nvkm_devinit*) ;

__attribute__((used)) static void *
nvkm_devinit_dtor(struct nvkm_subdev *subdev)
{
 struct nvkm_devinit *init = nvkm_devinit(subdev);
 void *data = init;

 if (init->func->dtor)
  data = init->func->dtor(init);


 nvkm_lockvgac(subdev->device, 1);
 return data;
}
