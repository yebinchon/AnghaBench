
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


typedef int u8 ;
struct TYPE_8__ {TYPE_1__* crtc; } ;
struct hdmi_context {int dev; TYPE_5__* drv_data; TYPE_2__ encoder; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_12__ {struct drm_display_mode mode; } ;
struct TYPE_10__ {TYPE_3__* data; } ;
struct TYPE_11__ {TYPE_4__ phy_confs; } ;
struct TYPE_9__ {int * conf; } ;
struct TYPE_7__ {TYPE_6__* state; } ;


 int DRM_DEV_ERROR (int ,char*) ;
 int hdmi_clk_set_parents (struct hdmi_context*,int) ;
 int hdmi_find_phy_conf (struct hdmi_context*,int) ;
 int hdmiphy_conf_reset (struct hdmi_context*) ;
 int hdmiphy_enable_mode_set (struct hdmi_context*,int) ;
 int hdmiphy_reg_write_buf (struct hdmi_context*,int ,int const*,int) ;
 int hdmiphy_wait_for_pll (struct hdmi_context*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void hdmiphy_conf_apply(struct hdmi_context *hdata)
{
 struct drm_display_mode *m = &hdata->encoder.crtc->state->mode;
 int ret;
 const u8 *phy_conf;

 ret = hdmi_find_phy_conf(hdata, m->clock * 1000);
 if (ret < 0) {
  DRM_DEV_ERROR(hdata->dev, "failed to find hdmiphy conf\n");
  return;
 }
 phy_conf = hdata->drv_data->phy_confs.data[ret].conf;

 hdmi_clk_set_parents(hdata, 0);

 hdmiphy_conf_reset(hdata);

 hdmiphy_enable_mode_set(hdata, 1);
 ret = hdmiphy_reg_write_buf(hdata, 0, phy_conf, 32);
 if (ret) {
  DRM_DEV_ERROR(hdata->dev, "failed to configure hdmiphy\n");
  return;
 }
 hdmiphy_enable_mode_set(hdata, 0);
 hdmi_clk_set_parents(hdata, 1);
 usleep_range(10000, 12000);
 hdmiphy_wait_for_pll(hdata);
}
