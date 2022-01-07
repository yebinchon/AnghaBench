
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;


 int HUBP_CLK_CNTL ;
 int HUBP_CLOCK_ENABLE ;
 int REG_UPDATE (int ,int ,int) ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

void hubp2_clk_cntl(struct hubp *hubp, bool enable)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);
 uint32_t clk_enable = enable ? 1 : 0;

 REG_UPDATE(HUBP_CLK_CNTL, HUBP_CLOCK_ENABLE, clk_enable);
}
