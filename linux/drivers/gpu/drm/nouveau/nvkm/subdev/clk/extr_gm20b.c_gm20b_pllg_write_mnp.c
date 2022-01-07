
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct gm20b_pll {int sdm_din; int base; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct gm20b_clk {TYPE_3__ base; } ;


 int GPCPLL_CFG2 ;
 int GPCPLL_CFG2_SDM_DIN_MASK ;
 int GPCPLL_CFG2_SDM_DIN_SHIFT ;
 int gk20a_pllg_write_mnp (TYPE_3__*,int *) ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int) ;

__attribute__((used)) static void
gm20b_pllg_write_mnp(struct gm20b_clk *clk, const struct gm20b_pll *pll)
{
 struct nvkm_device *device = clk->base.base.subdev.device;

 nvkm_mask(device, GPCPLL_CFG2, GPCPLL_CFG2_SDM_DIN_MASK,
    pll->sdm_din << GPCPLL_CFG2_SDM_DIN_SHIFT);
 gk20a_pllg_write_mnp(&clk->base, &pll->base);
}
