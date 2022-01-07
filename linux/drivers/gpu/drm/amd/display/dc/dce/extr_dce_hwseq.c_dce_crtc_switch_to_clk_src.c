
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dce_hwseq {int dummy; } ;
struct clock_source {scalar_t__ id; scalar_t__ dp_clk_src; } ;


 scalar_t__ CLOCK_SOURCE_COMBO_PHY_PLL0 ;
 scalar_t__ CLOCK_SOURCE_ID_DP_DTO ;
 scalar_t__ CLOCK_SOURCE_ID_PLL0 ;
 scalar_t__ CLOCK_SOURCE_ID_PLL2 ;
 int DC_ERR (char*,scalar_t__,unsigned int) ;
 int DP_DTO0_ENABLE ;
 int * PHYPLL_PIXEL_RATE_CNTL ;
 int PHYPLL_PIXEL_RATE_SOURCE ;
 int * PIXEL_RATE_CNTL ;
 int PIXEL_RATE_PLL_SOURCE ;
 int PIXEL_RATE_SOURCE ;
 scalar_t__ REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,scalar_t__,int ,int ) ;

void dce_crtc_switch_to_clk_src(struct dce_hwseq *hws,
  struct clock_source *clk_src,
  unsigned int tg_inst)
{
 if (clk_src->id == CLOCK_SOURCE_ID_DP_DTO || clk_src->dp_clk_src) {
  REG_UPDATE(PIXEL_RATE_CNTL[tg_inst],
    DP_DTO0_ENABLE, 1);

 } else if (clk_src->id >= CLOCK_SOURCE_COMBO_PHY_PLL0) {
  uint32_t rate_source = clk_src->id - CLOCK_SOURCE_COMBO_PHY_PLL0;

  REG_UPDATE_2(PHYPLL_PIXEL_RATE_CNTL[tg_inst],
    PHYPLL_PIXEL_RATE_SOURCE, rate_source,
    PIXEL_RATE_PLL_SOURCE, 0);

  REG_UPDATE(PIXEL_RATE_CNTL[tg_inst],
    DP_DTO0_ENABLE, 0);

 } else if (clk_src->id <= CLOCK_SOURCE_ID_PLL2) {
  uint32_t rate_source = clk_src->id - CLOCK_SOURCE_ID_PLL0;

  REG_UPDATE_2(PIXEL_RATE_CNTL[tg_inst],
    PIXEL_RATE_SOURCE, rate_source,
    DP_DTO0_ENABLE, 0);

  if (REG(PHYPLL_PIXEL_RATE_CNTL[tg_inst]))
   REG_UPDATE(PHYPLL_PIXEL_RATE_CNTL[tg_inst],
     PIXEL_RATE_PLL_SOURCE, 1);
 } else {
  DC_ERR("Unknown clock source. clk_src id: %d, TG_inst: %d",
         clk_src->id, tg_inst);
 }
}
