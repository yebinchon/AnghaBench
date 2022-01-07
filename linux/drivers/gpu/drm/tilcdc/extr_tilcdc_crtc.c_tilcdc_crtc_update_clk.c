
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_drm_private {int clk; } ;
struct tilcdc_crtc {scalar_t__ lcd_fck_rate; } ;
struct drm_device {int dev; struct tilcdc_drm_private* dev_private; } ;
struct drm_crtc {int mutex; struct drm_device* dev; } ;


 scalar_t__ clk_get_rate (int ) ;
 int drm_modeset_lock (int *,int *) ;
 int drm_modeset_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int tilcdc_crtc_disable (struct drm_crtc*) ;
 int tilcdc_crtc_enable (struct drm_crtc*) ;
 scalar_t__ tilcdc_crtc_is_on (struct drm_crtc*) ;
 int tilcdc_crtc_set_clk (struct drm_crtc*) ;
 struct tilcdc_crtc* to_tilcdc_crtc (struct drm_crtc*) ;

void tilcdc_crtc_update_clk(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct tilcdc_drm_private *priv = dev->dev_private;
 struct tilcdc_crtc *tilcdc_crtc = to_tilcdc_crtc(crtc);

 drm_modeset_lock(&crtc->mutex, ((void*)0));
 if (tilcdc_crtc->lcd_fck_rate != clk_get_rate(priv->clk)) {
  if (tilcdc_crtc_is_on(crtc)) {
   pm_runtime_get_sync(dev->dev);
   tilcdc_crtc_disable(crtc);

   tilcdc_crtc_set_clk(crtc);

   tilcdc_crtc_enable(crtc);
   pm_runtime_put_sync(dev->dev);
  }
 }
 drm_modeset_unlock(&crtc->mutex);
}
