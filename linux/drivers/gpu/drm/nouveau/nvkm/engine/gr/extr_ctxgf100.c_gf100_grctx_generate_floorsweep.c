
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct gf100_grctx_func {int (* smid_config ) (struct gf100_gr*) ;int (* tpc_mask ) (struct gf100_gr*) ;int (* r419f78 ) (struct gf100_gr*) ;int (* gpc_tpc_nr ) (struct gf100_gr*) ;int (* r406500 ) (struct gf100_gr*) ;int (* dist_skip_table ) (struct gf100_gr*) ;int (* max_ways_evict ) (struct gf100_gr*) ;int (* alpha_beta_tables ) (struct gf100_gr*) ;int (* rop_mapping ) (struct gf100_gr*) ;int (* r4060a8 ) (struct gf100_gr*) ;int (* tpc_nr ) (struct gf100_gr*,int ) ;int (* sm_id ) (struct gf100_gr*,int ,int ,int) ;} ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;
struct TYPE_8__ {TYPE_2__ engine; } ;
struct gf100_gr {int sm_nr; int gpc_nr; int* tpc_nr; TYPE_5__* sm; TYPE_4__* func; TYPE_3__ base; } ;
struct TYPE_10__ {int gpc; int tpc; } ;
struct TYPE_9__ {struct gf100_grctx_func* grctx; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int) ;
 int stub1 (struct gf100_gr*,int ,int ,int) ;
 int stub10 (struct gf100_gr*) ;
 int stub11 (struct gf100_gr*) ;
 int stub12 (struct gf100_gr*) ;
 int stub2 (struct gf100_gr*,int ) ;
 int stub3 (struct gf100_gr*) ;
 int stub4 (struct gf100_gr*) ;
 int stub5 (struct gf100_gr*) ;
 int stub6 (struct gf100_gr*) ;
 int stub7 (struct gf100_gr*) ;
 int stub8 (struct gf100_gr*) ;
 int stub9 (struct gf100_gr*) ;

void
gf100_grctx_generate_floorsweep(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 const struct gf100_grctx_func *func = gr->func->grctx;
 int gpc, sm, i, j;
 u32 data;

 for (sm = 0; sm < gr->sm_nr; sm++) {
  func->sm_id(gr, gr->sm[sm].gpc, gr->sm[sm].tpc, sm);
  if (func->tpc_nr)
   func->tpc_nr(gr, gr->sm[sm].gpc);
 }

 for (gpc = 0, i = 0; i < 4; i++) {
  for (data = 0, j = 0; j < 8 && gpc < gr->gpc_nr; j++, gpc++)
   data |= gr->tpc_nr[gpc] << (j * 4);
  nvkm_wr32(device, 0x406028 + (i * 4), data);
  nvkm_wr32(device, 0x405870 + (i * 4), data);
 }

 if (func->r4060a8)
  func->r4060a8(gr);

 func->rop_mapping(gr);

 if (func->alpha_beta_tables)
  func->alpha_beta_tables(gr);
 if (func->max_ways_evict)
  func->max_ways_evict(gr);
 if (func->dist_skip_table)
  func->dist_skip_table(gr);
 if (func->r406500)
  func->r406500(gr);
 if (func->gpc_tpc_nr)
  func->gpc_tpc_nr(gr);
 if (func->r419f78)
  func->r419f78(gr);
 if (func->tpc_mask)
  func->tpc_mask(gr);
 if (func->smid_config)
  func->smid_config(gr);
}
