
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int name; } ;
struct drm_connector {int interlace_allowed; int polled; scalar_t__ doublescan_allowed; } ;
struct omap_connector {void* hpd; struct drm_connector base; void* output; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;


 int DBG (char*,int ) ;
 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_DISCONNECT ;
 int DRM_CONNECTOR_POLL_HPD ;
 int GFP_KERNEL ;
 int OMAP_DSS_DEVICE_OP_DETECT ;
 int OMAP_DSS_DEVICE_OP_HPD ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 struct omap_connector* kzalloc (int,int ) ;
 int omap_connector_destroy (struct drm_connector*) ;
 struct omap_dss_device* omap_connector_find_device (struct drm_connector*,int ) ;
 int omap_connector_funcs ;
 int omap_connector_get_type (struct omap_dss_device*) ;
 int omap_connector_helper_funcs ;
 void* omapdss_device_get (struct omap_dss_device*) ;

struct drm_connector *omap_connector_init(struct drm_device *dev,
       struct omap_dss_device *output,
       struct drm_encoder *encoder)
{
 struct drm_connector *connector = ((void*)0);
 struct omap_connector *omap_connector;
 struct omap_dss_device *dssdev;

 DBG("%s", output->name);

 omap_connector = kzalloc(sizeof(*omap_connector), GFP_KERNEL);
 if (!omap_connector)
  goto fail;

 omap_connector->output = omapdss_device_get(output);

 connector = &omap_connector->base;
 connector->interlace_allowed = 1;
 connector->doublescan_allowed = 0;

 drm_connector_init(dev, connector, &omap_connector_funcs,
      omap_connector_get_type(output));
 drm_connector_helper_add(connector, &omap_connector_helper_funcs);







 dssdev = omap_connector_find_device(connector, OMAP_DSS_DEVICE_OP_HPD);
 if (dssdev) {
  omap_connector->hpd = omapdss_device_get(dssdev);
  connector->polled = DRM_CONNECTOR_POLL_HPD;
 } else {
  dssdev = omap_connector_find_device(connector,
          OMAP_DSS_DEVICE_OP_DETECT);
  if (dssdev)
   connector->polled = DRM_CONNECTOR_POLL_CONNECT |
         DRM_CONNECTOR_POLL_DISCONNECT;
 }

 return connector;

fail:
 if (connector)
  omap_connector_destroy(connector);

 return ((void*)0);
}
