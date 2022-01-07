
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_clk {TYPE_1__ subdev; } ;
struct gm20b_clk {int base; } ;
struct gk20a_pll {int dummy; } ;


 int GPCPLL_CFG ;
 int GPCPLL_CFG_IDDQ ;
 scalar_t__ gk20a_pllg_is_enabled (int *) ;
 int gk20a_pllg_n_lo (int *,struct gk20a_pll*) ;
 int gk20a_pllg_read_mnp (int *,struct gk20a_pll*) ;
 struct gm20b_clk* gm20b_clk (struct nvkm_clk*) ;
 int gm20b_pllg_disable (struct gm20b_clk*) ;
 int gm20b_pllg_slide (struct gm20b_clk*,int ) ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int) ;

__attribute__((used)) static void
gm20b_clk_fini(struct nvkm_clk *base)
{
 struct nvkm_device *device = base->subdev.device;
 struct gm20b_clk *clk = gm20b_clk(base);


 if (gk20a_pllg_is_enabled(&clk->base)) {
  struct gk20a_pll pll;
  u32 n_lo;

  gk20a_pllg_read_mnp(&clk->base, &pll);
  n_lo = gk20a_pllg_n_lo(&clk->base, &pll);
  gm20b_pllg_slide(clk, n_lo);
 }

 gm20b_pllg_disable(clk);


 nvkm_mask(device, GPCPLL_CFG, GPCPLL_CFG_IDDQ, 1);
}
