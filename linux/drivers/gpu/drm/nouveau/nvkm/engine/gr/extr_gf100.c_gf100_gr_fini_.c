
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_gr {int dummy; } ;
struct TYPE_8__ {int falcon; } ;
struct TYPE_7__ {int falcon; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;
struct gf100_gr {TYPE_4__ fecs; TYPE_3__ gpccs; TYPE_2__ base; } ;


 struct gf100_gr* gf100_gr (struct nvkm_gr*) ;
 int nvkm_falcon_put (int ,struct nvkm_subdev*) ;

__attribute__((used)) static int
gf100_gr_fini_(struct nvkm_gr *base, bool suspend)
{
 struct gf100_gr *gr = gf100_gr(base);
 struct nvkm_subdev *subdev = &gr->base.engine.subdev;
 nvkm_falcon_put(gr->gpccs.falcon, subdev);
 nvkm_falcon_put(gr->fecs.falcon, subdev);
 return 0;
}
