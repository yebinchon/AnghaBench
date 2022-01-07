
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ior_state {int proto_evo; int link; int head; void* proto; } ;
struct nvkm_ior {int id; struct nvkm_ior_state arm; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 void* DP ;
 void* LVDS ;
 void* TMDS ;
 void* UNKNOWN ;
 int nv50_pior_depth (struct nvkm_ior*,struct nvkm_ior_state*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int const) ;

void
g94_sor_state(struct nvkm_ior *sor, struct nvkm_ior_state *state)
{
 struct nvkm_device *device = sor->disp->engine.subdev.device;
 const u32 coff = sor->id * 8 + (state == &sor->arm) * 4;
 u32 ctrl = nvkm_rd32(device, 0x610794 + coff);

 state->proto_evo = (ctrl & 0x00000f00) >> 8;
 switch (state->proto_evo) {
 case 0: state->proto = LVDS; state->link = 1; break;
 case 1: state->proto = TMDS; state->link = 1; break;
 case 2: state->proto = TMDS; state->link = 2; break;
 case 5: state->proto = TMDS; state->link = 3; break;
 case 8: state->proto = DP; state->link = 1; break;
 case 9: state->proto = DP; state->link = 2; break;
 default:
  state->proto = UNKNOWN;
  break;
 }

 state->head = ctrl & 0x00000003;
 nv50_pior_depth(sor, state, ctrl);
}
