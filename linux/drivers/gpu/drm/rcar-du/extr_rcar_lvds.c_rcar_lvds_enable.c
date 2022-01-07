
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {TYPE_3__* encoder; } ;
struct TYPE_7__ {int mod; } ;
struct drm_display_mode {int clock; } ;
struct rcar_lvds {int mode; scalar_t__ panel; TYPE_5__* info; TYPE_4__ bridge; TYPE_6__* companion; scalar_t__ dual_link; TYPE_1__ clocks; struct drm_display_mode display_mode; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_12__ {TYPE_2__* funcs; } ;
struct TYPE_11__ {int quirks; int gen; int (* pll_setup ) (struct rcar_lvds*,int) ;} ;
struct TYPE_9__ {int crtc; } ;
struct TYPE_8__ {int (* enable ) (TYPE_6__*) ;} ;


 int LVDCHCR ;
 int LVDCHCR_CHSEL_CH (int,int) ;
 int LVDCR0 ;
 int LVDCR0_BEN ;
 int LVDCR0_DUSEL ;
 int LVDCR0_LVEN ;
 int LVDCR0_LVMD_SHIFT ;
 int LVDCR0_LVRES ;
 int LVDCR0_PLLON ;
 int LVDCR0_PWD ;
 int LVDCR1 ;
 int LVDCR1_CHSTBY (int) ;
 int LVDCR1_CLKSTBY ;
 int LVDCTRCR ;
 int LVDCTRCR_CTR0SEL_HSYNC ;
 int LVDCTRCR_CTR1SEL_VSYNC ;
 int LVDCTRCR_CTR2SEL_DISP ;
 int LVDCTRCR_CTR3SEL_ZERO ;
 int LVDSTRIPE ;
 int LVDSTRIPE_ST_ON ;
 int RCAR_LVDS_QUIRK_DUAL_LINK ;
 int RCAR_LVDS_QUIRK_EXT_PLL ;
 int RCAR_LVDS_QUIRK_GEN3_LVEN ;
 int RCAR_LVDS_QUIRK_LANES ;
 int RCAR_LVDS_QUIRK_PWD ;
 struct rcar_lvds* bridge_to_rcar_lvds (struct drm_bridge*) ;
 int clk_prepare_enable (int ) ;
 int drm_crtc_index (int ) ;
 int drm_panel_enable (scalar_t__) ;
 int drm_panel_prepare (scalar_t__) ;
 int rcar_lvds_write (struct rcar_lvds*,int ,int) ;
 int stub1 (TYPE_6__*) ;
 int stub2 (struct rcar_lvds*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rcar_lvds_enable(struct drm_bridge *bridge)
{
 struct rcar_lvds *lvds = bridge_to_rcar_lvds(bridge);
 const struct drm_display_mode *mode = &lvds->display_mode;
 u32 lvdhcr;
 u32 lvdcr0;
 int ret;

 ret = clk_prepare_enable(lvds->clocks.mod);
 if (ret < 0)
  return;


 if (lvds->dual_link && lvds->companion)
  lvds->companion->funcs->enable(lvds->companion);
 rcar_lvds_write(lvds, LVDCTRCR, LVDCTRCR_CTR3SEL_ZERO |
   LVDCTRCR_CTR2SEL_DISP | LVDCTRCR_CTR1SEL_VSYNC |
   LVDCTRCR_CTR0SEL_HSYNC);

 if (lvds->info->quirks & RCAR_LVDS_QUIRK_LANES)
  lvdhcr = LVDCHCR_CHSEL_CH(0, 0) | LVDCHCR_CHSEL_CH(1, 3)
         | LVDCHCR_CHSEL_CH(2, 2) | LVDCHCR_CHSEL_CH(3, 1);
 else
  lvdhcr = LVDCHCR_CHSEL_CH(0, 0) | LVDCHCR_CHSEL_CH(1, 1)
         | LVDCHCR_CHSEL_CH(2, 2) | LVDCHCR_CHSEL_CH(3, 3);

 rcar_lvds_write(lvds, LVDCHCR, lvdhcr);

 if (lvds->info->quirks & RCAR_LVDS_QUIRK_DUAL_LINK) {




  rcar_lvds_write(lvds, LVDSTRIPE,
    lvds->dual_link ? LVDSTRIPE_ST_ON : 0);
 }





 if (!lvds->dual_link || lvds->companion)
  lvds->info->pll_setup(lvds, mode->clock * 1000);


 lvdcr0 = lvds->mode << LVDCR0_LVMD_SHIFT;

 if (lvds->bridge.encoder) {




  if (drm_crtc_index(lvds->bridge.encoder->crtc) == 2)
   lvdcr0 |= LVDCR0_DUSEL;
 }

 rcar_lvds_write(lvds, LVDCR0, lvdcr0);


 rcar_lvds_write(lvds, LVDCR1,
   LVDCR1_CHSTBY(3) | LVDCR1_CHSTBY(2) |
   LVDCR1_CHSTBY(1) | LVDCR1_CHSTBY(0) | LVDCR1_CLKSTBY);

 if (lvds->info->gen < 3) {

  lvdcr0 |= LVDCR0_BEN | LVDCR0_LVEN;
  rcar_lvds_write(lvds, LVDCR0, lvdcr0);
 }

 if (!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL)) {




  lvdcr0 |= LVDCR0_PLLON;
  rcar_lvds_write(lvds, LVDCR0, lvdcr0);
 }

 if (lvds->info->quirks & RCAR_LVDS_QUIRK_PWD) {

  lvdcr0 |= LVDCR0_PWD;
  rcar_lvds_write(lvds, LVDCR0, lvdcr0);
 }

 if (lvds->info->quirks & RCAR_LVDS_QUIRK_GEN3_LVEN) {




  lvdcr0 |= LVDCR0_LVEN;
  if (!(lvds->info->quirks & RCAR_LVDS_QUIRK_PWD))
   rcar_lvds_write(lvds, LVDCR0, lvdcr0);
 }

 if (!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL)) {

  usleep_range(100, 150);
 }


 lvdcr0 |= LVDCR0_LVRES;
 rcar_lvds_write(lvds, LVDCR0, lvdcr0);

 if (lvds->panel) {
  drm_panel_prepare(lvds->panel);
  drm_panel_enable(lvds->panel);
 }
}
