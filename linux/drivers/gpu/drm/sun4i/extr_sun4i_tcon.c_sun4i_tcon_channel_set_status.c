
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_tcon {struct clk* sclk1; int regs; TYPE_1__* quirks; struct clk* dclk; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int has_channel_1; int has_channel_0; } ;


 int DRM_WARN (char*) ;
 int SUN4I_TCON0_CTL_REG ;
 int SUN4I_TCON0_CTL_TCON_ENABLE ;
 int SUN4I_TCON1_CTL_REG ;
 int SUN4I_TCON1_CTL_TCON_ENABLE ;
 int WARN_ON (int) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int clk_rate_exclusive_get (struct clk*) ;
 int clk_rate_exclusive_put (struct clk*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sun4i_tcon_channel_set_status(struct sun4i_tcon *tcon, int channel,
       bool enabled)
{
 struct clk *clk;

 switch (channel) {
 case 0:
  WARN_ON(!tcon->quirks->has_channel_0);
  regmap_update_bits(tcon->regs, SUN4I_TCON0_CTL_REG,
       SUN4I_TCON0_CTL_TCON_ENABLE,
       enabled ? SUN4I_TCON0_CTL_TCON_ENABLE : 0);
  clk = tcon->dclk;
  break;
 case 1:
  WARN_ON(!tcon->quirks->has_channel_1);
  regmap_update_bits(tcon->regs, SUN4I_TCON1_CTL_REG,
       SUN4I_TCON1_CTL_TCON_ENABLE,
       enabled ? SUN4I_TCON1_CTL_TCON_ENABLE : 0);
  clk = tcon->sclk1;
  break;
 default:
  DRM_WARN("Unknown channel... doing nothing\n");
  return;
 }

 if (enabled) {
  clk_prepare_enable(clk);
  clk_rate_exclusive_get(clk);
 } else {
  clk_rate_exclusive_put(clk);
  clk_disable_unprepare(clk);
 }
}
