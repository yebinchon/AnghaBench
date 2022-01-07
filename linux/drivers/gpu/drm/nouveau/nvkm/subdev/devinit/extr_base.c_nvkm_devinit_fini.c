
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_subdev {int dummy; } ;
struct nvkm_devinit {int post; } ;


 struct nvkm_devinit* nvkm_devinit (struct nvkm_subdev*) ;

__attribute__((used)) static int
nvkm_devinit_fini(struct nvkm_subdev *subdev, bool suspend)
{
 struct nvkm_devinit *init = nvkm_devinit(subdev);

 if (suspend)
  init->post = 1;
 return 0;
}
