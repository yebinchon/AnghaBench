
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ n; } ;
struct gm20b_pll {scalar_t__ sdm_din; TYPE_3__ base; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct gm20b_clk {TYPE_2__ base; } ;


 scalar_t__ BIT (int ) ;
 int ETIMEDOUT ;
 int GPCPLL_CFG2 ;
 scalar_t__ GPCPLL_CFG2_SDM_DIN_MASK ;
 scalar_t__ GPCPLL_CFG2_SDM_DIN_NEW_MASK ;
 scalar_t__ GPCPLL_CFG2_SDM_DIN_NEW_SHIFT ;
 scalar_t__ GPCPLL_CFG2_SDM_DIN_SHIFT ;
 int GPCPLL_NDIV_SLOWDOWN ;
 int GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT ;
 int GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT ;
 int GPC_BCAST_NDIV_SLOWDOWN_DEBUG ;
 int GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK ;
 int gk20a_pllg_write_mnp (TYPE_2__*,TYPE_3__*) ;
 int gm20b_dvfs_calc_ndiv (struct gm20b_clk*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int gm20b_pllg_read_mnp (struct gm20b_clk*,struct gm20b_pll*) ;
 int nvkm_mask (struct nvkm_device*,int ,scalar_t__,scalar_t__) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 scalar_t__ nvkm_wait_usec (struct nvkm_device*,int,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
gm20b_pllg_slide(struct gm20b_clk *clk, u32 n)
{
 struct nvkm_subdev *subdev = &clk->base.base.subdev;
 struct nvkm_device *device = subdev->device;
 struct gm20b_pll pll;
 u32 n_int, sdm_din;
 int ret = 0;


 gm20b_dvfs_calc_ndiv(clk, n, &n_int, &sdm_din);


 gm20b_pllg_read_mnp(clk, &pll);

 if (n_int == pll.base.n && sdm_din == pll.sdm_din)
  return 0;


 nvkm_mask(device, GPCPLL_NDIV_SLOWDOWN,
  BIT(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT),
  BIT(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT));



 nvkm_mask(device, GPCPLL_CFG2, GPCPLL_CFG2_SDM_DIN_NEW_MASK,
    sdm_din << GPCPLL_CFG2_SDM_DIN_NEW_SHIFT);
 pll.base.n = n_int;
 udelay(1);
 gk20a_pllg_write_mnp(&clk->base, &pll.base);


 udelay(1);
 nvkm_mask(device, GPCPLL_NDIV_SLOWDOWN,
    BIT(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT),
    BIT(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT));


 if (nvkm_wait_usec(device, 500, GPC_BCAST_NDIV_SLOWDOWN_DEBUG,
  GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK,
  GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK) < 0)
  ret = -ETIMEDOUT;


 nvkm_mask(device, GPCPLL_CFG2, GPCPLL_CFG2_SDM_DIN_MASK,
    sdm_din << GPCPLL_CFG2_SDM_DIN_SHIFT);


 nvkm_mask(device, GPCPLL_NDIV_SLOWDOWN,
  BIT(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT) |
  BIT(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT), 0);
 nvkm_rd32(device, GPCPLL_NDIV_SLOWDOWN);

 return ret;
}
