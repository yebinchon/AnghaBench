
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_drm_private {int dss; } ;


 int dss_install_mgr_ops (int ,int *,struct omap_drm_private*) ;
 int mgr_ops ;

void omap_crtc_pre_init(struct omap_drm_private *priv)
{
 dss_install_mgr_ops(priv->dss, &mgr_ops, priv);
}
