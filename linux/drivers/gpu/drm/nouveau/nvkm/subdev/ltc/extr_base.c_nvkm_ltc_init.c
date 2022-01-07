
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_ltc {int zbc_min; int zbc_max; TYPE_1__* func; int * zbc_stencil; int * zbc_depth; int * zbc_color; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_ltc*) ;int (* zbc_clear_stencil ) (struct nvkm_ltc*,int,int ) ;int (* zbc_clear_depth ) (struct nvkm_ltc*,int,int ) ;int (* zbc_clear_color ) (struct nvkm_ltc*,int,int ) ;} ;


 struct nvkm_ltc* nvkm_ltc (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_ltc*,int,int ) ;
 int stub2 (struct nvkm_ltc*,int,int ) ;
 int stub3 (struct nvkm_ltc*,int,int ) ;
 int stub4 (struct nvkm_ltc*) ;

__attribute__((used)) static int
nvkm_ltc_init(struct nvkm_subdev *subdev)
{
 struct nvkm_ltc *ltc = nvkm_ltc(subdev);
 int i;

 for (i = ltc->zbc_min; i <= ltc->zbc_max; i++) {
  ltc->func->zbc_clear_color(ltc, i, ltc->zbc_color[i]);
  ltc->func->zbc_clear_depth(ltc, i, ltc->zbc_depth[i]);
  if (ltc->func->zbc_clear_stencil)
   ltc->func->zbc_clear_stencil(ltc, i, ltc->zbc_stencil[i]);
 }

 ltc->func->init(ltc);
 return 0;
}
