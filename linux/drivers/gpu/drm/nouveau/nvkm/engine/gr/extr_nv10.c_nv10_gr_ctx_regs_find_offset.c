
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct nv10_gr {TYPE_2__ base; } ;


 int ARRAY_SIZE (int*) ;
 int* nv10_gr_ctx_regs ;
 int nvkm_error (struct nvkm_subdev*,char*,int) ;

__attribute__((used)) static int
nv10_gr_ctx_regs_find_offset(struct nv10_gr *gr, int reg)
{
 struct nvkm_subdev *subdev = &gr->base.engine.subdev;
 int i;
 for (i = 0; i < ARRAY_SIZE(nv10_gr_ctx_regs); i++) {
  if (nv10_gr_ctx_regs[i] == reg)
   return i;
 }
 nvkm_error(subdev, "unknown offset nv10_ctx_regs %d\n", reg);
 return -1;
}
