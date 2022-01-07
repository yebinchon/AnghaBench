
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;


 int HUBP_CLK_CNTL ;
 int HUBP_CLOCK_ENABLE ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;

void hubp1_clk_cntl(struct hubp *hubp, bool enable)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);
 uint32_t clk_enable = enable ? 1 : 0;

 REG_UPDATE(HUBP_CLK_CNTL, HUBP_CLOCK_ENABLE, clk_enable);
}
