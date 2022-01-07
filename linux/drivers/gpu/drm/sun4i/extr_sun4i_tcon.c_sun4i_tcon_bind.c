
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_engine {int id; } ;
struct sun4i_tcon {struct sunxi_engine* lcd_rst; TYPE_1__* quirks; int list; int id; int regs; struct sunxi_engine* crtc; struct sunxi_engine* lvds_pll; struct sunxi_engine* lvds_rst; struct device* dev; struct drm_device* drm; } ;
struct sun4i_drv {int tcon_list; } ;
struct reset_control {int id; } ;
struct drm_device {struct sun4i_drv* dev_private; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_2__ {scalar_t__ has_channel_0; scalar_t__ needs_de_be_mux; scalar_t__ has_lvds_alt; scalar_t__ supports_lvds; scalar_t__ needs_edp_reset; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct sunxi_engine*) ;
 int PTR_ERR (struct sunxi_engine*) ;
 int SUN4I_TCON0_CTL_REG ;
 int SUN4I_TCON0_CTL_SRC_SEL_MASK ;
 int SUN4I_TCON1_CTL_REG ;
 int SUN4I_TCON1_CTL_SRC_SEL_MASK ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct sun4i_tcon*) ;
 int dev_warn (struct device*,char*) ;
 struct sunxi_engine* devm_clk_get (struct device*,char*) ;
 struct sun4i_tcon* devm_kzalloc (struct device*,int,int ) ;
 struct sunxi_engine* devm_reset_control_get (struct device*,char*) ;
 struct sunxi_engine* devm_reset_control_get_optional (struct device*,char*) ;
 struct sunxi_engine* devm_reset_control_get_shared (struct device*,char*) ;
 int list_add_tail (int *,int *) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_graph_get_remote_node (int ,int,int ) ;
 int of_node_put (struct device_node*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_assert (struct sunxi_engine*) ;
 int reset_control_deassert (struct sunxi_engine*) ;
 int reset_control_reset (struct sunxi_engine*) ;
 struct sunxi_engine* sun4i_crtc_init (struct drm_device*,struct sunxi_engine*,struct sun4i_tcon*) ;
 int sun4i_dclk_create (struct device*,struct sun4i_tcon*) ;
 int sun4i_dclk_free (struct sun4i_tcon*) ;
 int sun4i_lvds_init (struct drm_device*,struct sun4i_tcon*) ;
 int sun4i_rgb_init (struct drm_device*,struct sun4i_tcon*) ;
 struct sunxi_engine* sun4i_tcon_find_engine (struct sun4i_drv*,int ) ;
 int sun4i_tcon_free_clocks (struct sun4i_tcon*) ;
 int sun4i_tcon_init_clocks (struct device*,struct sun4i_tcon*) ;
 int sun4i_tcon_init_irq (struct device*,struct sun4i_tcon*) ;
 int sun4i_tcon_init_regmap (struct device*,struct sun4i_tcon*) ;

__attribute__((used)) static int sun4i_tcon_bind(struct device *dev, struct device *master,
      void *data)
{
 struct drm_device *drm = data;
 struct sun4i_drv *drv = drm->dev_private;
 struct sunxi_engine *engine;
 struct device_node *remote;
 struct sun4i_tcon *tcon;
 struct reset_control *edp_rstc;
 bool has_lvds_rst, has_lvds_alt, can_lvds;
 int ret;

 engine = sun4i_tcon_find_engine(drv, dev->of_node);
 if (IS_ERR(engine)) {
  dev_err(dev, "Couldn't find matching engine\n");
  return -EPROBE_DEFER;
 }

 tcon = devm_kzalloc(dev, sizeof(*tcon), GFP_KERNEL);
 if (!tcon)
  return -ENOMEM;
 dev_set_drvdata(dev, tcon);
 tcon->drm = drm;
 tcon->dev = dev;
 tcon->id = engine->id;
 tcon->quirks = of_device_get_match_data(dev);

 tcon->lcd_rst = devm_reset_control_get(dev, "lcd");
 if (IS_ERR(tcon->lcd_rst)) {
  dev_err(dev, "Couldn't get our reset line\n");
  return PTR_ERR(tcon->lcd_rst);
 }

 if (tcon->quirks->needs_edp_reset) {
  edp_rstc = devm_reset_control_get_shared(dev, "edp");
  if (IS_ERR(edp_rstc)) {
   dev_err(dev, "Couldn't get edp reset line\n");
   return PTR_ERR(edp_rstc);
  }

  ret = reset_control_deassert(edp_rstc);
  if (ret) {
   dev_err(dev, "Couldn't deassert edp reset line\n");
   return ret;
  }
 }


 ret = reset_control_reset(tcon->lcd_rst);
 if (ret) {
  dev_err(dev, "Couldn't deassert our reset line\n");
  return ret;
 }

 if (tcon->quirks->supports_lvds) {







  tcon->lvds_rst = devm_reset_control_get_optional(dev, "lvds");
  if (IS_ERR(tcon->lvds_rst)) {
   dev_err(dev, "Couldn't get our reset line\n");
   return PTR_ERR(tcon->lvds_rst);
  } else if (tcon->lvds_rst) {
   has_lvds_rst = 1;
   reset_control_reset(tcon->lvds_rst);
  } else {
   has_lvds_rst = 0;
  }
  if (tcon->quirks->has_lvds_alt) {
   tcon->lvds_pll = devm_clk_get(dev, "lvds-alt");
   if (IS_ERR(tcon->lvds_pll)) {
    if (PTR_ERR(tcon->lvds_pll) == -ENOENT) {
     has_lvds_alt = 0;
    } else {
     dev_err(dev, "Couldn't get the LVDS PLL\n");
     return PTR_ERR(tcon->lvds_pll);
    }
   } else {
    has_lvds_alt = 1;
   }
  }

  if (!has_lvds_rst ||
      (tcon->quirks->has_lvds_alt && !has_lvds_alt)) {
   dev_warn(dev, "Missing LVDS properties, Please upgrade your DT\n");
   dev_warn(dev, "LVDS output disabled\n");
   can_lvds = 0;
  } else {
   can_lvds = 1;
  }
 } else {
  can_lvds = 0;
 }

 ret = sun4i_tcon_init_clocks(dev, tcon);
 if (ret) {
  dev_err(dev, "Couldn't init our TCON clocks\n");
  goto err_assert_reset;
 }

 ret = sun4i_tcon_init_regmap(dev, tcon);
 if (ret) {
  dev_err(dev, "Couldn't init our TCON regmap\n");
  goto err_free_clocks;
 }

 if (tcon->quirks->has_channel_0) {
  ret = sun4i_dclk_create(dev, tcon);
  if (ret) {
   dev_err(dev, "Couldn't create our TCON dot clock\n");
   goto err_free_clocks;
  }
 }

 ret = sun4i_tcon_init_irq(dev, tcon);
 if (ret) {
  dev_err(dev, "Couldn't init our TCON interrupts\n");
  goto err_free_dotclock;
 }

 tcon->crtc = sun4i_crtc_init(drm, engine, tcon);
 if (IS_ERR(tcon->crtc)) {
  dev_err(dev, "Couldn't create our CRTC\n");
  ret = PTR_ERR(tcon->crtc);
  goto err_free_dotclock;
 }

 if (tcon->quirks->has_channel_0) {





  remote = of_graph_get_remote_node(dev->of_node, 1, 0);
  if (of_device_is_compatible(remote, "panel-lvds"))
   if (can_lvds)
    ret = sun4i_lvds_init(drm, tcon);
   else
    ret = -EINVAL;
  else
   ret = sun4i_rgb_init(drm, tcon);
  of_node_put(remote);

  if (ret < 0)
   goto err_free_dotclock;
 }

 if (tcon->quirks->needs_de_be_mux) {
  regmap_update_bits(tcon->regs, SUN4I_TCON0_CTL_REG,
       SUN4I_TCON0_CTL_SRC_SEL_MASK,
       tcon->id);
  regmap_update_bits(tcon->regs, SUN4I_TCON1_CTL_REG,
       SUN4I_TCON1_CTL_SRC_SEL_MASK,
       tcon->id);
 }

 list_add_tail(&tcon->list, &drv->tcon_list);

 return 0;

err_free_dotclock:
 if (tcon->quirks->has_channel_0)
  sun4i_dclk_free(tcon);
err_free_clocks:
 sun4i_tcon_free_clocks(tcon);
err_assert_reset:
 reset_control_assert(tcon->lcd_rst);
 return ret;
}
