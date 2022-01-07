
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_clk {TYPE_1__ subdev; } ;
struct gk20a_pll {int dummy; } ;
struct gk20a_clk {int dummy; } ;


 int GPCPLL_CFG ;
 int GPCPLL_CFG_IDDQ ;
 struct gk20a_clk* gk20a_clk (struct nvkm_clk*) ;
 int gk20a_pllg_disable (struct gk20a_clk*) ;
 scalar_t__ gk20a_pllg_is_enabled (struct gk20a_clk*) ;
 int gk20a_pllg_n_lo (struct gk20a_clk*,struct gk20a_pll*) ;
 int gk20a_pllg_read_mnp (struct gk20a_clk*,struct gk20a_pll*) ;
 int gk20a_pllg_slide (struct gk20a_clk*,int ) ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int) ;

void
gk20a_clk_fini(struct nvkm_clk *base)
{
 struct nvkm_device *device = base->subdev.device;
 struct gk20a_clk *clk = gk20a_clk(base);


 if (gk20a_pllg_is_enabled(clk)) {
  struct gk20a_pll pll;
  u32 n_lo;

  gk20a_pllg_read_mnp(clk, &pll);
  n_lo = gk20a_pllg_n_lo(clk, &pll);
  gk20a_pllg_slide(clk, n_lo);
 }

 gk20a_pllg_disable(clk);


 nvkm_mask(device, GPCPLL_CFG, GPCPLL_CFG_IDDQ, 1);
}
