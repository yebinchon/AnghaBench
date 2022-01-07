
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hideep_ts {int dummy; } ;


 int HIDEEP_FLASH_CACHE_CFG ;
 int HIDEEP_FLASH_TIM ;
 int HIDEEP_SYSCON_CLK_CON ;
 int HIDEEP_SYSCON_CLK_ENA ;
 int HIDEEP_SYSCON_PWR_CON ;
 int HIDEEP_SYSCON_SPC_CON ;
 int HIDEEP_SYSCON_WDT_CON ;
 int hideep_pgm_w_reg (struct hideep_ts*,int ,int) ;

__attribute__((used)) static void hideep_pgm_set(struct hideep_ts *ts)
{
 hideep_pgm_w_reg(ts, HIDEEP_SYSCON_WDT_CON, 0x00);
 hideep_pgm_w_reg(ts, HIDEEP_SYSCON_SPC_CON, 0x00);
 hideep_pgm_w_reg(ts, HIDEEP_SYSCON_CLK_ENA, 0xFF);
 hideep_pgm_w_reg(ts, HIDEEP_SYSCON_CLK_CON, 0x01);
 hideep_pgm_w_reg(ts, HIDEEP_SYSCON_PWR_CON, 0x01);
 hideep_pgm_w_reg(ts, HIDEEP_FLASH_TIM, 0x03);
 hideep_pgm_w_reg(ts, HIDEEP_FLASH_CACHE_CFG, 0x00);
}
