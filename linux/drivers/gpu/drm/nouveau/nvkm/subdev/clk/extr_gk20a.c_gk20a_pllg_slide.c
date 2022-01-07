
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_pll {scalar_t__ n; } ;
struct TYPE_2__ {struct nvkm_subdev subdev; } ;
struct gk20a_clk {TYPE_1__ base; } ;


 int BIT (int ) ;
 int ETIMEDOUT ;
 int GPCPLL_NDIV_SLOWDOWN ;
 int GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT ;
 int GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT ;
 int GPC_BCAST_NDIV_SLOWDOWN_DEBUG ;
 int GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK ;
 int gk20a_pllg_read_mnp (struct gk20a_clk*,struct gk20a_pll*) ;
 int gk20a_pllg_write_mnp (struct gk20a_clk*,struct gk20a_pll*) ;
 int nvkm_mask (struct nvkm_device*,int ,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 scalar_t__ nvkm_wait_usec (struct nvkm_device*,int,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
gk20a_pllg_slide(struct gk20a_clk *clk, u32 n)
{
 struct nvkm_subdev *subdev = &clk->base.subdev;
 struct nvkm_device *device = subdev->device;
 struct gk20a_pll pll;
 int ret = 0;


 gk20a_pllg_read_mnp(clk, &pll);

 if (n == pll.n)
  return 0;


 nvkm_mask(device, GPCPLL_NDIV_SLOWDOWN,
  BIT(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT),
  BIT(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT));


 pll.n = n;
 udelay(1);
 gk20a_pllg_write_mnp(clk, &pll);


 udelay(1);
 nvkm_mask(device, GPCPLL_NDIV_SLOWDOWN,
    BIT(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT),
    BIT(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT));


 if (nvkm_wait_usec(device, 500, GPC_BCAST_NDIV_SLOWDOWN_DEBUG,
  GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK,
  GPC_BCAST_NDIV_SLOWDOWN_DEBUG_PLL_DYNRAMP_DONE_SYNCED_MASK) < 0)
  ret = -ETIMEDOUT;


 nvkm_mask(device, GPCPLL_NDIV_SLOWDOWN,
  BIT(GPCPLL_NDIV_SLOWDOWN_SLOWDOWN_USING_PLL_SHIFT) |
  BIT(GPCPLL_NDIV_SLOWDOWN_EN_DYNRAMP_SHIFT), 0);
 nvkm_rd32(device, GPCPLL_NDIV_SLOWDOWN);

 return ret;
}
