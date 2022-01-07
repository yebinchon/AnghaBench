
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_therm {TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int (* intr ) (struct nvkm_therm*) ;} ;


 struct nvkm_therm* nvkm_therm (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_therm*) ;

__attribute__((used)) static void
nvkm_therm_intr(struct nvkm_subdev *subdev)
{
 struct nvkm_therm *therm = nvkm_therm(subdev);
 if (therm->func->intr)
  therm->func->intr(therm);
}
