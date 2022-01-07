
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; scalar_t__ firmware; } ;


 int nvkm_wr32 (int ,int,int const) ;

void
gf100_gr_init_fecs_exceptions(struct gf100_gr *gr)
{
 const u32 data = gr->firmware ? 0x000e0000 : 0x000e0001;
 nvkm_wr32(gr->base.engine.subdev.device, 0x409c24, data);
}
