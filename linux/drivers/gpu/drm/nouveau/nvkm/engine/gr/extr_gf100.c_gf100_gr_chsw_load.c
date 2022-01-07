
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_gr {int dummy; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; int firmware; } ;


 struct gf100_gr* gf100_gr (struct nvkm_gr*) ;
 int nvkm_rd32 (int ,int) ;

__attribute__((used)) static bool
gf100_gr_chsw_load(struct nvkm_gr *base)
{
 struct gf100_gr *gr = gf100_gr(base);
 if (!gr->firmware) {
  u32 trace = nvkm_rd32(gr->base.engine.subdev.device, 0x40981c);
  if (trace & 0x00000040)
   return 1;
 } else {
  u32 mthd = nvkm_rd32(gr->base.engine.subdev.device, 0x409808);
  if (mthd & 0x00080000)
   return 1;
 }
 return 0;
}
