
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int device; } ;
struct nvkm_devinit {int force_post; int post; TYPE_1__* func; } ;
struct TYPE_2__ {int (* preinit ) (struct nvkm_devinit*) ;} ;


 struct nvkm_devinit* nvkm_devinit (struct nvkm_subdev*) ;
 int nvkm_lockvgac (int ,int) ;
 int stub1 (struct nvkm_devinit*) ;

__attribute__((used)) static int
nvkm_devinit_preinit(struct nvkm_subdev *subdev)
{
 struct nvkm_devinit *init = nvkm_devinit(subdev);

 if (init->func->preinit)
  init->func->preinit(init);


 if (init->force_post) {
  init->post = init->force_post;
  init->force_post = 0;
 }


 nvkm_lockvgac(subdev->device, 0);
 return 0;
}
