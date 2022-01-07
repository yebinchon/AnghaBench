
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int canvas_id_vd1_2; scalar_t__ canvas; int canvas_id_vd1_1; int canvas_id_vd1_0; int canvas_id_osd1; struct drm_device* drm; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct meson_drm* dev_get_drvdata (struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int meson_canvas_free (scalar_t__,int ) ;

__attribute__((used)) static void meson_drv_unbind(struct device *dev)
{
 struct meson_drm *priv = dev_get_drvdata(dev);
 struct drm_device *drm = priv->drm;

 if (priv->canvas) {
  meson_canvas_free(priv->canvas, priv->canvas_id_osd1);
  meson_canvas_free(priv->canvas, priv->canvas_id_vd1_0);
  meson_canvas_free(priv->canvas, priv->canvas_id_vd1_1);
  meson_canvas_free(priv->canvas, priv->canvas_id_vd1_2);
 }

 drm_dev_unregister(drm);
 drm_irq_uninstall(drm);
 drm_kms_helper_poll_fini(drm);
 drm_mode_config_cleanup(drm);
 drm_dev_put(drm);

}
