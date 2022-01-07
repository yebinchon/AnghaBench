
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct gf100_grctx_func {int (* r408840 ) (struct gf100_gr*) ;int (* r419a3c ) (struct gf100_gr*) ;int (* r418e94 ) (struct gf100_gr*) ;int (* r419e00 ) (struct gf100_gr*) ;int (* r419eb0 ) (struct gf100_gr*) ;int (* r418800 ) (struct gf100_gr*) ;int (* r419cb8 ) (struct gf100_gr*) ;scalar_t__ mthd; int (* r400088 ) (struct gf100_gr*,int) ;scalar_t__ sw_veid_bundle_init; scalar_t__ icmd; int (* unkn ) (struct gf100_gr*) ;int (* patch_ltc ) (struct gf100_grctx*) ;int (* attrib ) (struct gf100_grctx*) ;int (* bundle ) (struct gf100_grctx*) ;int (* pagepool ) (struct gf100_grctx*) ;int ppc; int tpc; int gpc_1; int zcull; int gpc_0; int hub; } ;
struct gf100_grctx {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct gf100_gr {scalar_t__ fuc_method; scalar_t__ fuc_bundle; int fuc_sw_ctx; TYPE_4__* func; TYPE_3__ base; } ;
struct TYPE_8__ {struct gf100_grctx_func* grctx; } ;


 int gf100_gr_icmd (struct gf100_gr*,scalar_t__) ;
 int gf100_gr_mmio (struct gf100_gr*,int ) ;
 int gf100_gr_mthd (struct gf100_gr*,scalar_t__) ;
 int gf100_gr_wait_idle (struct gf100_gr*) ;
 int gf100_grctx_generate_floorsweep (struct gf100_gr*) ;
 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_mc_unk260 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int ) ;
 int stub1 (struct gf100_grctx*) ;
 int stub10 (struct gf100_gr*) ;
 int stub11 (struct gf100_gr*) ;
 int stub12 (struct gf100_gr*) ;
 int stub13 (struct gf100_gr*) ;
 int stub14 (struct gf100_gr*) ;
 int stub2 (struct gf100_grctx*) ;
 int stub3 (struct gf100_grctx*) ;
 int stub4 (struct gf100_grctx*) ;
 int stub5 (struct gf100_gr*) ;
 int stub6 (struct gf100_gr*,int) ;
 int stub7 (struct gf100_gr*,int) ;
 int stub8 (struct gf100_gr*) ;
 int stub9 (struct gf100_gr*) ;

void
gf100_grctx_generate_main(struct gf100_gr *gr, struct gf100_grctx *info)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 const struct gf100_grctx_func *grctx = gr->func->grctx;
 u32 idle_timeout;

 nvkm_mc_unk260(device, 0);

 if (!gr->fuc_sw_ctx) {
  gf100_gr_mmio(gr, grctx->hub);
  gf100_gr_mmio(gr, grctx->gpc_0);
  gf100_gr_mmio(gr, grctx->zcull);
  gf100_gr_mmio(gr, grctx->gpc_1);
  gf100_gr_mmio(gr, grctx->tpc);
  gf100_gr_mmio(gr, grctx->ppc);
 } else {
  gf100_gr_mmio(gr, gr->fuc_sw_ctx);
 }

 gf100_gr_wait_idle(gr);

 idle_timeout = nvkm_mask(device, 0x404154, 0xffffffff, 0x00000000);

 grctx->pagepool(info);
 grctx->bundle(info);
 grctx->attrib(info);
 if (grctx->patch_ltc)
  grctx->patch_ltc(info);
 grctx->unkn(gr);

 gf100_grctx_generate_floorsweep(gr);

 gf100_gr_wait_idle(gr);

 if (grctx->r400088) grctx->r400088(gr, 0);
 if (gr->fuc_bundle)
  gf100_gr_icmd(gr, gr->fuc_bundle);
 else
  gf100_gr_icmd(gr, grctx->icmd);
 if (grctx->sw_veid_bundle_init)
  gf100_gr_icmd(gr, grctx->sw_veid_bundle_init);
 if (grctx->r400088) grctx->r400088(gr, 1);

 nvkm_wr32(device, 0x404154, idle_timeout);

 if (gr->fuc_method)
  gf100_gr_mthd(gr, gr->fuc_method);
 else
  gf100_gr_mthd(gr, grctx->mthd);
 nvkm_mc_unk260(device, 1);

 if (grctx->r419cb8)
  grctx->r419cb8(gr);
 if (grctx->r418800)
  grctx->r418800(gr);
 if (grctx->r419eb0)
  grctx->r419eb0(gr);
 if (grctx->r419e00)
  grctx->r419e00(gr);
 if (grctx->r418e94)
  grctx->r418e94(gr);
 if (grctx->r419a3c)
  grctx->r419a3c(gr);
 if (grctx->r408840)
  grctx->r408840(gr);
}
