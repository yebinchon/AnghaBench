
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_clk {int dummy; } ;
struct gk20a_pll {int dummy; } ;
struct TYPE_3__ {struct gk20a_pll pll; int base; } ;
struct TYPE_4__ {int dfs_coeff; int dfs_ext_cal; } ;
struct gm20b_clk {scalar_t__ uv; scalar_t__ new_uv; scalar_t__ safe_fmax_vmin; TYPE_1__ base; struct gk20a_pll new_pll; TYPE_2__ new_dvfs; TYPE_2__ dvfs; } ;


 struct gm20b_clk* gm20b_clk (struct nvkm_clk*) ;
 int gm20b_dvfs_calc_safe_pll (struct gm20b_clk*,struct gk20a_pll*) ;
 int gm20b_dvfs_program_coeff (struct gm20b_clk*,int ) ;
 int gm20b_dvfs_program_dfs_detection (struct gm20b_clk*,TYPE_2__*) ;
 int gm20b_dvfs_program_ext_cal (struct gm20b_clk*,int ) ;
 int gm20b_pllg_program_mnp_slide (struct gm20b_clk*,struct gk20a_pll*) ;
 int nv_clk_src_gpc ;
 scalar_t__ nvkm_clk_read (int *,int ) ;

__attribute__((used)) static int
gm20b_clk_prog(struct nvkm_clk *base)
{
 struct gm20b_clk *clk = gm20b_clk(base);
 u32 cur_freq;
 int ret;


 if (clk->uv == clk->new_uv)
  goto prog;
 cur_freq = nvkm_clk_read(&clk->base.base, nv_clk_src_gpc);
 if (cur_freq > clk->safe_fmax_vmin) {
  struct gk20a_pll pll_safe;

  if (clk->uv < clk->new_uv)

   pll_safe = clk->base.pll;
  else

   pll_safe = clk->new_pll;

  gm20b_dvfs_calc_safe_pll(clk, &pll_safe);
  ret = gm20b_pllg_program_mnp_slide(clk, &pll_safe);
  if (ret)
   return ret;
 }







 gm20b_dvfs_program_coeff(clk, 0);
 gm20b_dvfs_program_ext_cal(clk, clk->new_dvfs.dfs_ext_cal);
 gm20b_dvfs_program_coeff(clk, clk->new_dvfs.dfs_coeff);
 gm20b_dvfs_program_dfs_detection(clk, &clk->new_dvfs);

prog:
 clk->uv = clk->new_uv;
 clk->dvfs = clk->new_dvfs;
 clk->base.pll = clk->new_pll;

 return gm20b_pllg_program_mnp_slide(clk, &clk->base.pll);
}
