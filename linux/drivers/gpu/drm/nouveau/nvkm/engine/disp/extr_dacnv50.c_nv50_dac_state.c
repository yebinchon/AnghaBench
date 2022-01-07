
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_ior_state {int proto_evo; int head; int proto; } ;
struct nvkm_ior {int id; struct nvkm_ior_state arm; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;


 int CRT ;
 int UNKNOWN ;
 int nvkm_rd32 (struct nvkm_device*,int const) ;

__attribute__((used)) static void
nv50_dac_state(struct nvkm_ior *dac, struct nvkm_ior_state *state)
{
 struct nvkm_device *device = dac->disp->engine.subdev.device;
 const u32 coff = dac->id * 8 + (state == &dac->arm) * 4;
 u32 ctrl = nvkm_rd32(device, 0x610b58 + coff);

 state->proto_evo = (ctrl & 0x00000f00) >> 8;
 switch (state->proto_evo) {
 case 0: state->proto = CRT; break;
 default:
  state->proto = UNKNOWN;
  break;
 }

 state->head = ctrl & 0x00000003;
}
