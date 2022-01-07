
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_ltc {TYPE_1__* func; } ;
struct TYPE_2__ {int (* intr ) (struct nvkm_ltc*) ;} ;


 struct nvkm_ltc* nvkm_ltc (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_ltc*) ;

__attribute__((used)) static void
nvkm_ltc_intr(struct nvkm_subdev *subdev)
{
 struct nvkm_ltc *ltc = nvkm_ltc(subdev);
 ltc->func->intr(ltc);
}
