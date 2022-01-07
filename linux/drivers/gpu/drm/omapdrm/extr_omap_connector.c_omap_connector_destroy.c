
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* ops; } ;
struct omap_connector {struct omap_dss_device* output; struct omap_dss_device* hpd; } ;
struct drm_connector {int name; } ;
struct TYPE_2__ {int (* unregister_hpd_cb ) (struct omap_dss_device*) ;} ;


 int DBG (char*,int ) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int kfree (struct omap_connector*) ;
 int omapdss_device_put (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*) ;
 struct omap_connector* to_omap_connector (struct drm_connector*) ;

__attribute__((used)) static void omap_connector_destroy(struct drm_connector *connector)
{
 struct omap_connector *omap_connector = to_omap_connector(connector);

 DBG("%s", connector->name);

 if (omap_connector->hpd) {
  struct omap_dss_device *hpd = omap_connector->hpd;

  hpd->ops->unregister_hpd_cb(hpd);
  omapdss_device_put(hpd);
  omap_connector->hpd = ((void*)0);
 }

 drm_connector_unregister(connector);
 drm_connector_cleanup(connector);

 omapdss_device_put(omap_connector->output);

 kfree(omap_connector);
}
