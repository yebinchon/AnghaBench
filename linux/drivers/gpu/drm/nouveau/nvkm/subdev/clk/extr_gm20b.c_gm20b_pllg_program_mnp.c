
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct gk20a_pll {scalar_t__ n; scalar_t__ m; scalar_t__ pl; } ;
struct gm20b_pll {scalar_t__ sdm_din; struct gk20a_pll base; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct gm20b_clk {TYPE_2__ base; } ;


 scalar_t__ BIT (scalar_t__) ;
 int GPC2CLK_OUT ;
 int GPC2CLK_OUT_VCODIV1 ;
 int GPC2CLK_OUT_VCODIV2 ;
 int GPC2CLK_OUT_VCODIV_MASK ;
 int GPC2CLK_OUT_VCODIV_SHIFT ;
 scalar_t__ ffs (scalar_t__) ;
 int gk20a_pllg_is_enabled (TYPE_2__*) ;
 int gk20a_pllg_write_mnp (TYPE_2__*,struct gk20a_pll*) ;
 int gm20b_dvfs_calc_ndiv (struct gm20b_clk*,scalar_t__,scalar_t__*,scalar_t__*) ;
 int gm20b_pllg_disable (struct gm20b_clk*) ;
 int gm20b_pllg_enable (struct gm20b_clk*) ;
 int gm20b_pllg_read_mnp (struct gm20b_clk*,struct gm20b_pll*) ;
 int gm20b_pllg_write_mnp (struct gm20b_clk*,struct gm20b_pll*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int nvkm_mask (struct nvkm_device*,int ,int ,int) ;
 int nvkm_rd32 (struct nvkm_device*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
gm20b_pllg_program_mnp(struct gm20b_clk *clk, const struct gk20a_pll *pll)
{
 struct nvkm_subdev *subdev = &clk->base.base.subdev;
 struct nvkm_device *device = subdev->device;
 struct gm20b_pll cur_pll;
 u32 n_int, sdm_din;

 bool pdiv_only;
 int ret;

 gm20b_dvfs_calc_ndiv(clk, pll->n, &n_int, &sdm_din);
 gm20b_pllg_read_mnp(clk, &cur_pll);
 pdiv_only = cur_pll.base.n == n_int && cur_pll.sdm_din == sdm_din &&
      cur_pll.base.m == pll->m;


 if (!gk20a_pllg_is_enabled(&clk->base))
  pdiv_only = 0;


 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
    GPC2CLK_OUT_VCODIV2 << GPC2CLK_OUT_VCODIV_SHIFT);

 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
    GPC2CLK_OUT_VCODIV2 << GPC2CLK_OUT_VCODIV_SHIFT);
 nvkm_rd32(device, GPC2CLK_OUT);
 udelay(2);

 if (pdiv_only) {
  u32 old = cur_pll.base.pl;
  u32 new = pll->pl;







  if ((old & new) == 0) {
   cur_pll.base.pl = min(old | BIT(ffs(new) - 1),
           new | BIT(ffs(old) - 1));
   gk20a_pllg_write_mnp(&clk->base, &cur_pll.base);
  }

  cur_pll.base.pl = new;
  gk20a_pllg_write_mnp(&clk->base, &cur_pll.base);
 } else {

  gm20b_pllg_disable(clk);

  cur_pll.base = *pll;
  cur_pll.base.n = n_int;
  cur_pll.sdm_din = sdm_din;
  gm20b_pllg_write_mnp(clk, &cur_pll);

  ret = gm20b_pllg_enable(clk);
  if (ret)
   return ret;
 }


 udelay(2);
 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
    GPC2CLK_OUT_VCODIV1 << GPC2CLK_OUT_VCODIV_SHIFT);

 nvkm_mask(device, GPC2CLK_OUT, GPC2CLK_OUT_VCODIV_MASK,
    GPC2CLK_OUT_VCODIV1 << GPC2CLK_OUT_VCODIV_SHIFT);
 nvkm_rd32(device, GPC2CLK_OUT);

 return 0;
}
