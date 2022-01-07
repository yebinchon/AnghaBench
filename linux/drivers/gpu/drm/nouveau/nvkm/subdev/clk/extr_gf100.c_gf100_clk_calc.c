
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_cstate {int dummy; } ;
struct nvkm_clk {int dummy; } ;
struct gf100_clk {int dummy; } ;


 int calc_clk (struct gf100_clk*,struct nvkm_cstate*,int,int ) ;
 struct gf100_clk* gf100_clk (struct nvkm_clk*) ;
 int nv_clk_src_copy ;
 int nv_clk_src_gpc ;
 int nv_clk_src_hubk01 ;
 int nv_clk_src_hubk06 ;
 int nv_clk_src_hubk07 ;
 int nv_clk_src_pmu ;
 int nv_clk_src_rop ;
 int nv_clk_src_vdec ;

__attribute__((used)) static int
gf100_clk_calc(struct nvkm_clk *base, struct nvkm_cstate *cstate)
{
 struct gf100_clk *clk = gf100_clk(base);
 int ret;

 if ((ret = calc_clk(clk, cstate, 0x00, nv_clk_src_gpc)) ||
     (ret = calc_clk(clk, cstate, 0x01, nv_clk_src_rop)) ||
     (ret = calc_clk(clk, cstate, 0x02, nv_clk_src_hubk07)) ||
     (ret = calc_clk(clk, cstate, 0x07, nv_clk_src_hubk06)) ||
     (ret = calc_clk(clk, cstate, 0x08, nv_clk_src_hubk01)) ||
     (ret = calc_clk(clk, cstate, 0x09, nv_clk_src_copy)) ||
     (ret = calc_clk(clk, cstate, 0x0c, nv_clk_src_pmu)) ||
     (ret = calc_clk(clk, cstate, 0x0e, nv_clk_src_vdec)))
  return ret;

 return 0;
}
