
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {scalar_t__ num_pins; } ;
struct panel_drv_data {int enabled; int intro_printed; scalar_t__ vpnl; scalar_t__ vddi; TYPE_1__* pdev; int channel; int te_enabled; TYPE_4__ pin_config; int vm; struct omap_dss_device* src; } ;
struct omap_dss_dsi_config {int hs_clk_min; int hs_clk_max; int lp_clk_min; int lp_clk_max; int * vm; int pixel_format; int mode; } ;
struct omap_dss_device {TYPE_3__* ops; } ;
struct TYPE_6__ {int (* configure_pins ) (struct omap_dss_device*,TYPE_4__*) ;int (* set_config ) (struct omap_dss_device*,struct omap_dss_dsi_config*) ;int (* enable_video_output ) (struct omap_dss_device*,int ) ;int (* disable ) (struct omap_dss_device*,int,int) ;int (* enable_hs ) (struct omap_dss_device*,int ,int) ;} ;
struct TYPE_7__ {TYPE_2__ dsi; int (* enable ) (struct omap_dss_device*) ;} ;
struct TYPE_5__ {int dev; } ;


 int DCS_BRIGHTNESS ;
 int DCS_CTRL_DISPLAY ;
 int MIPI_DCS_PIXEL_FMT_24BIT ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DCS_SET_PIXEL_FORMAT ;
 int OMAP_DSS_DSI_CMD_MODE ;
 int OMAP_DSS_DSI_FMT_RGB888 ;
 int _dsicm_enable_te (struct panel_drv_data*,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ,int ,int ) ;
 int dsicm_dcs_write_0 (struct panel_drv_data*,int ) ;
 int dsicm_dcs_write_1 (struct panel_drv_data*,int ,int) ;
 int dsicm_get_id (struct panel_drv_data*,int *,int *,int *) ;
 int dsicm_hw_reset (struct panel_drv_data*) ;
 int dsicm_sleep_out (struct panel_drv_data*) ;
 int regulator_disable (scalar_t__) ;
 int regulator_enable (scalar_t__) ;
 int stub1 (struct omap_dss_device*,TYPE_4__*) ;
 int stub2 (struct omap_dss_device*,struct omap_dss_dsi_config*) ;
 int stub3 (struct omap_dss_device*) ;
 int stub4 (struct omap_dss_device*,int ,int) ;
 int stub5 (struct omap_dss_device*,int ) ;
 int stub6 (struct omap_dss_device*,int ,int) ;
 int stub7 (struct omap_dss_device*,int,int) ;

__attribute__((used)) static int dsicm_power_on(struct panel_drv_data *ddata)
{
 struct omap_dss_device *src = ddata->src;
 u8 id1, id2, id3;
 int r;
 struct omap_dss_dsi_config dsi_config = {
  .mode = OMAP_DSS_DSI_CMD_MODE,
  .pixel_format = OMAP_DSS_DSI_FMT_RGB888,
  .vm = &ddata->vm,
  .hs_clk_min = 150000000,
  .hs_clk_max = 300000000,
  .lp_clk_min = 7000000,
  .lp_clk_max = 10000000,
 };

 if (ddata->vpnl) {
  r = regulator_enable(ddata->vpnl);
  if (r) {
   dev_err(&ddata->pdev->dev,
    "failed to enable VPNL: %d\n", r);
   return r;
  }
 }

 if (ddata->vddi) {
  r = regulator_enable(ddata->vddi);
  if (r) {
   dev_err(&ddata->pdev->dev,
    "failed to enable VDDI: %d\n", r);
   goto err_vpnl;
  }
 }

 if (ddata->pin_config.num_pins > 0) {
  r = src->ops->dsi.configure_pins(src, &ddata->pin_config);
  if (r) {
   dev_err(&ddata->pdev->dev,
    "failed to configure DSI pins\n");
   goto err_vddi;
  }
 }

 r = src->ops->dsi.set_config(src, &dsi_config);
 if (r) {
  dev_err(&ddata->pdev->dev, "failed to configure DSI\n");
  goto err_vddi;
 }

 src->ops->enable(src);

 dsicm_hw_reset(ddata);

 src->ops->dsi.enable_hs(src, ddata->channel, 0);

 r = dsicm_sleep_out(ddata);
 if (r)
  goto err;

 r = dsicm_get_id(ddata, &id1, &id2, &id3);
 if (r)
  goto err;

 r = dsicm_dcs_write_1(ddata, DCS_BRIGHTNESS, 0xff);
 if (r)
  goto err;

 r = dsicm_dcs_write_1(ddata, DCS_CTRL_DISPLAY,
   (1<<2) | (1<<5));
 if (r)
  goto err;

 r = dsicm_dcs_write_1(ddata, MIPI_DCS_SET_PIXEL_FORMAT,
  MIPI_DCS_PIXEL_FMT_24BIT);
 if (r)
  goto err;

 r = dsicm_dcs_write_0(ddata, MIPI_DCS_SET_DISPLAY_ON);
 if (r)
  goto err;

 r = _dsicm_enable_te(ddata, ddata->te_enabled);
 if (r)
  goto err;

 r = src->ops->dsi.enable_video_output(src, ddata->channel);
 if (r)
  goto err;

 ddata->enabled = 1;

 if (!ddata->intro_printed) {
  dev_info(&ddata->pdev->dev, "panel revision %02x.%02x.%02x\n",
   id1, id2, id3);
  ddata->intro_printed = 1;
 }

 src->ops->dsi.enable_hs(src, ddata->channel, 1);

 return 0;
err:
 dev_err(&ddata->pdev->dev, "error while enabling panel, issuing HW reset\n");

 dsicm_hw_reset(ddata);

 src->ops->dsi.disable(src, 1, 0);
err_vddi:
 if (ddata->vddi)
  regulator_disable(ddata->vddi);
err_vpnl:
 if (ddata->vpnl)
  regulator_disable(ddata->vpnl);

 return r;
}
