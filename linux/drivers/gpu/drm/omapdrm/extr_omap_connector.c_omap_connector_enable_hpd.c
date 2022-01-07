
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* ops; } ;
struct omap_connector {struct omap_dss_device* hpd; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int (* register_hpd_cb ) (struct omap_dss_device*,int ,struct omap_connector*) ;} ;


 int omap_connector_hpd_cb ;
 int stub1 (struct omap_dss_device*,int ,struct omap_connector*) ;
 struct omap_connector* to_omap_connector (struct drm_connector*) ;

void omap_connector_enable_hpd(struct drm_connector *connector)
{
 struct omap_connector *omap_connector = to_omap_connector(connector);
 struct omap_dss_device *hpd = omap_connector->hpd;

 if (hpd)
  hpd->ops->register_hpd_cb(hpd, omap_connector_hpd_cb,
       omap_connector);
}
