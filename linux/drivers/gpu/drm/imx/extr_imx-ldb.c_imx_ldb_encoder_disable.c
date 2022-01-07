
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_ldb_channel {int panel; struct imx_ldb* ldb; } ;
struct imx_ldb {int ldb_ctrl; int dev; int * clk_parent; int * clk_sel; struct imx_ldb_channel* channel; int regmap; struct bus_mux* lvds_mux; int * clk; } ;
struct drm_encoder {int dummy; } ;
struct bus_mux {int mask; int shift; int reg; } ;


 int IOMUXC_GPR2 ;
 int LDB_CH0_MODE_EN_MASK ;
 int LDB_CH1_MODE_EN_MASK ;
 int LDB_SPLIT_MODE_EN ;
 int clk_disable_unprepare (int ) ;
 int clk_set_parent (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int drm_panel_disable (int ) ;
 int drm_panel_unprepare (int ) ;
 struct imx_ldb_channel* enc_to_imx_ldb_ch (struct drm_encoder*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void imx_ldb_encoder_disable(struct drm_encoder *encoder)
{
 struct imx_ldb_channel *imx_ldb_ch = enc_to_imx_ldb_ch(encoder);
 struct imx_ldb *ldb = imx_ldb_ch->ldb;
 int mux, ret;

 drm_panel_disable(imx_ldb_ch->panel);

 if (imx_ldb_ch == &ldb->channel[0])
  ldb->ldb_ctrl &= ~LDB_CH0_MODE_EN_MASK;
 else if (imx_ldb_ch == &ldb->channel[1])
  ldb->ldb_ctrl &= ~LDB_CH1_MODE_EN_MASK;

 regmap_write(ldb->regmap, IOMUXC_GPR2, ldb->ldb_ctrl);

 if (ldb->ldb_ctrl & LDB_SPLIT_MODE_EN) {
  clk_disable_unprepare(ldb->clk[0]);
  clk_disable_unprepare(ldb->clk[1]);
 }

 if (ldb->lvds_mux) {
  const struct bus_mux *lvds_mux = ((void*)0);

  if (imx_ldb_ch == &ldb->channel[0])
   lvds_mux = &ldb->lvds_mux[0];
  else if (imx_ldb_ch == &ldb->channel[1])
   lvds_mux = &ldb->lvds_mux[1];

  regmap_read(ldb->regmap, lvds_mux->reg, &mux);
  mux &= lvds_mux->mask;
  mux >>= lvds_mux->shift;
 } else {
  mux = (imx_ldb_ch == &ldb->channel[0]) ? 0 : 1;
 }


 ret = clk_set_parent(ldb->clk_sel[mux], ldb->clk_parent[mux]);
 if (ret)
  dev_err(ldb->dev,
   "unable to set di%d parent clock to original parent\n",
   mux);

 drm_panel_unprepare(imx_ldb_ch->panel);
}
