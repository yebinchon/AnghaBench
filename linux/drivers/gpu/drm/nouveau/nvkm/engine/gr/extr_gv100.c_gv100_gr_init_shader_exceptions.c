
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;


 int TPC_UNIT (int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int ,int) ;

__attribute__((used)) static void
gv100_gr_init_shader_exceptions(struct gf100_gr *gr, int gpc, int tpc)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 int sm;
 for (sm = 0; sm < 0x100; sm += 0x80) {
  nvkm_wr32(device, TPC_UNIT(gpc, tpc, 0x728 + sm), 0x0085eb64);
  nvkm_wr32(device, TPC_UNIT(gpc, tpc, 0x610), 0x00000001);
  nvkm_wr32(device, TPC_UNIT(gpc, tpc, 0x72c + sm), 0x00000004);
 }
}
