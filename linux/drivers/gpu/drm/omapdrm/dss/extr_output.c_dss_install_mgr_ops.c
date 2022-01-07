
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_drm_private {int dummy; } ;
struct dss_mgr_ops {int dummy; } ;
struct dss_device {struct omap_drm_private* mgr_ops_priv; struct dss_mgr_ops const* mgr_ops; } ;


 int EBUSY ;

int dss_install_mgr_ops(struct dss_device *dss,
   const struct dss_mgr_ops *mgr_ops,
   struct omap_drm_private *priv)
{
 if (dss->mgr_ops)
  return -EBUSY;

 dss->mgr_ops = mgr_ops;
 dss->mgr_ops_priv = priv;

 return 0;
}
