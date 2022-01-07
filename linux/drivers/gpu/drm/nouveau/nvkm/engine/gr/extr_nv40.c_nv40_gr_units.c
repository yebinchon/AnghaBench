
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_gr {TYPE_2__ engine; } ;


 int nvkm_rd32 (int ,int) ;

u64
nv40_gr_units(struct nvkm_gr *gr)
{
 return nvkm_rd32(gr->engine.subdev.device, 0x1540);
}
