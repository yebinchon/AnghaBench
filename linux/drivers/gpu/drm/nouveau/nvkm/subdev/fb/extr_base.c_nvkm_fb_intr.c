
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_fb {TYPE_1__* func; } ;
struct TYPE_2__ {int (* intr ) (struct nvkm_fb*) ;} ;


 struct nvkm_fb* nvkm_fb (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_fb*) ;

__attribute__((used)) static void
nvkm_fb_intr(struct nvkm_subdev *subdev)
{
 struct nvkm_fb *fb = nvkm_fb(subdev);
 if (fb->func->intr)
  fb->func->intr(fb);
}
