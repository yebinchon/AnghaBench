
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct dibx000_bandwidth_config {int pll_bypass; int modulo; int ADClkSrc; int IO_CLK_en_core; int bypclk_div; int enable_refdiv; int pll_ratio; int pll_range; int pll_reset; int pll_prediv; } ;
struct TYPE_2__ {scalar_t__ input_clk_is_div_2; int quartz_direct; struct dibx000_bandwidth_config* bw; } ;
struct dib7000m_state {TYPE_1__ cfg; } ;


 int dib7000m_reset_pll_common (struct dib7000m_state*,struct dibx000_bandwidth_config const*) ;
 int dib7000m_write_word (struct dib7000m_state*,int,int) ;

__attribute__((used)) static void dib7000m_reset_pll(struct dib7000m_state *state)
{
 const struct dibx000_bandwidth_config *bw = state->cfg.bw;
 u16 reg_907,reg_910;


 reg_907 = (bw->pll_bypass << 15) | (bw->modulo << 7) |
  (bw->ADClkSrc << 6) | (bw->IO_CLK_en_core << 5) | (bw->bypclk_div << 2) |
  (bw->enable_refdiv << 1) | (0 << 0);
 reg_910 = (((bw->pll_ratio >> 6) & 0x3) << 3) | (bw->pll_range << 1) | bw->pll_reset;



 if (!state->cfg.quartz_direct) {
  reg_910 |= (1 << 5);


  if(state->cfg.input_clk_is_div_2)
   reg_907 |= (16 << 9);
  else
   reg_907 |= (8 << 9);
 } else {
  reg_907 |= (bw->pll_ratio & 0x3f) << 9;
  reg_910 |= (bw->pll_prediv << 5);
 }

 dib7000m_write_word(state, 910, reg_910);
 dib7000m_write_word(state, 907, reg_907);
 dib7000m_write_word(state, 908, 0x0006);

 dib7000m_reset_pll_common(state, bw);
}
