
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {int gpc_nr; int* ppc_nr; int** ppc_tpc_nr; int** ppc_tpc_mask; scalar_t__ ppc_tpc_min; TYPE_3__ base; } ;


 int ARRAY_SIZE (int *) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;

void
gm200_grctx_generate_dist_skip_table(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 u32 data[8] = {};
 int gpc, ppc, i;

 for (gpc = 0; gpc < gr->gpc_nr; gpc++) {
  for (ppc = 0; ppc < gr->ppc_nr[gpc]; ppc++) {
   u8 ppc_tpcs = gr->ppc_tpc_nr[gpc][ppc];
   u8 ppc_tpcm = gr->ppc_tpc_mask[gpc][ppc];
   while (ppc_tpcs-- > gr->ppc_tpc_min)
    ppc_tpcm &= ppc_tpcm - 1;
   ppc_tpcm ^= gr->ppc_tpc_mask[gpc][ppc];
   ((u8 *)data)[gpc] |= ppc_tpcm;
  }
 }

 for (i = 0; i < ARRAY_SIZE(data); i++)
  nvkm_wr32(device, 0x4064d0 + (i * 0x04), data[i]);
}
