
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int polled; } ;
struct udl_drm_connector {struct drm_connector connector; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_CONNECTOR_POLL_DISCONNECT ;
 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_MODE_CONNECTOR_DVII ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_connector_register (struct drm_connector*) ;
 struct udl_drm_connector* kzalloc (int,int ) ;
 int udl_connector_funcs ;
 int udl_connector_helper_funcs ;

int udl_connector_init(struct drm_device *dev, struct drm_encoder *encoder)
{
 struct udl_drm_connector *udl_connector;
 struct drm_connector *connector;

 udl_connector = kzalloc(sizeof(struct udl_drm_connector), GFP_KERNEL);
 if (!udl_connector)
  return -ENOMEM;

 connector = &udl_connector->connector;
 drm_connector_init(dev, connector, &udl_connector_funcs,
      DRM_MODE_CONNECTOR_DVII);
 drm_connector_helper_add(connector, &udl_connector_helper_funcs);

 drm_connector_register(connector);
 drm_connector_attach_encoder(connector, encoder);
 connector->polled = DRM_CONNECTOR_POLL_HPD |
  DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;

 return 0;
}
