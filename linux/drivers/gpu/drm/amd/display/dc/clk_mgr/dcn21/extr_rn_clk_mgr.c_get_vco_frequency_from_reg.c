
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixed31_32 {unsigned int value; } ;
struct clk_mgr_internal {int dfs_ref_freq_khz; } ;


 int CLK1_CLK_PLL_REQ ;
 int FbMult_frac ;
 int FbMult_int ;
 int REG_GET (int ,int ,unsigned int*) ;
 int dc_fixpt_floor (struct fixed31_32) ;
 struct fixed31_32 dc_fixpt_from_int (unsigned int) ;
 struct fixed31_32 dc_fixpt_mul_int (struct fixed31_32,int ) ;

__attribute__((used)) static int get_vco_frequency_from_reg(struct clk_mgr_internal *clk_mgr)
{

 struct fixed31_32 pll_req;
 unsigned int fbmult_frac_val = 0;
 unsigned int fbmult_int_val = 0;







 REG_GET(CLK1_CLK_PLL_REQ, FbMult_frac, &fbmult_frac_val);
 REG_GET(CLK1_CLK_PLL_REQ, FbMult_int, &fbmult_int_val);

 pll_req = dc_fixpt_from_int(fbmult_int_val);





 pll_req.value |= fbmult_frac_val << 16;


 pll_req = dc_fixpt_mul_int(pll_req, clk_mgr->dfs_ref_freq_khz);


 return dc_fixpt_floor(pll_req);
}
