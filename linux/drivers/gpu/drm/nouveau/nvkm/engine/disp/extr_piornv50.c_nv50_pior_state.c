
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ior_state {int proto_evo; int rgdiv; int head; int proto; } ;
struct nvkm_ior {int id; struct nvkm_ior_state arm; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_2__ subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;


 int TMDS ;
 int UNKNOWN ;
 int nv50_pior_depth (struct nvkm_ior*,struct nvkm_ior_state*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int const) ;

__attribute__((used)) static void
nv50_pior_state(struct nvkm_ior *pior, struct nvkm_ior_state *state)
{
 struct nvkm_device *device = pior->disp->engine.subdev.device;
 const u32 coff = pior->id * 8 + (state == &pior->arm) * 4;
 u32 ctrl = nvkm_rd32(device, 0x610b80 + coff);

 state->proto_evo = (ctrl & 0x00000f00) >> 8;
 state->rgdiv = 1;
 switch (state->proto_evo) {
 case 0: state->proto = TMDS; break;
 default:
  state->proto = UNKNOWN;
  break;
 }

 state->head = ctrl & 0x00000003;
 nv50_pior_depth(pior, state, ctrl);
}
