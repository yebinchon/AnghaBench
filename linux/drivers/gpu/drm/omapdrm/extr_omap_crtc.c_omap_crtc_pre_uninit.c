
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_drm_private {int dss; } ;


 int dss_uninstall_mgr_ops (int ) ;

void omap_crtc_pre_uninit(struct omap_drm_private *priv)
{
 dss_uninstall_mgr_ops(priv->dss);
}
