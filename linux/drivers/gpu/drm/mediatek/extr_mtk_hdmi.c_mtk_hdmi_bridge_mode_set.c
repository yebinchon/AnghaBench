
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int mode; int dev; } ;
struct drm_display_mode {int flags; int vscan; int vtotal; int vsync_end; int vsync_start; int vdisplay; int hskew; int htotal; int hsync_end; int hsync_start; int hdisplay; int name; } ;
struct drm_bridge {int dummy; } ;


 int dev_dbg (int ,char*,int ,int ,...) ;
 int drm_mode_copy (int *,struct drm_display_mode const*) ;
 struct mtk_hdmi* hdmi_ctx_from_bridge (struct drm_bridge*) ;

__attribute__((used)) static void mtk_hdmi_bridge_mode_set(struct drm_bridge *bridge,
    const struct drm_display_mode *mode,
    const struct drm_display_mode *adjusted_mode)
{
 struct mtk_hdmi *hdmi = hdmi_ctx_from_bridge(bridge);

 dev_dbg(hdmi->dev, "cur info: name:%s, hdisplay:%d\n",
  adjusted_mode->name, adjusted_mode->hdisplay);
 dev_dbg(hdmi->dev, "hsync_start:%d,hsync_end:%d, htotal:%d",
  adjusted_mode->hsync_start, adjusted_mode->hsync_end,
  adjusted_mode->htotal);
 dev_dbg(hdmi->dev, "hskew:%d, vdisplay:%d\n",
  adjusted_mode->hskew, adjusted_mode->vdisplay);
 dev_dbg(hdmi->dev, "vsync_start:%d, vsync_end:%d, vtotal:%d",
  adjusted_mode->vsync_start, adjusted_mode->vsync_end,
  adjusted_mode->vtotal);
 dev_dbg(hdmi->dev, "vscan:%d, flag:%d\n",
  adjusted_mode->vscan, adjusted_mode->flags);

 drm_mode_copy(&hdmi->mode, adjusted_mode);
}
