
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vbox_crtc {int dummy; } ;
struct drm_connector {int base; scalar_t__ doublescan_allowed; scalar_t__ interlace_allowed; } ;
struct vbox_connector {struct vbox_crtc* vbox_crtc; struct drm_connector base; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int suggested_y_property; int suggested_x_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int DRM_MODE_CONNECTOR_VGA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_mode_create_suggested_offset_properties (struct drm_device*) ;
 int drm_object_attach_property (int *,int ,int ) ;
 struct vbox_connector* kzalloc (int,int ) ;
 int vbox_connector_funcs ;
 int vbox_connector_helper_funcs ;

__attribute__((used)) static int vbox_connector_init(struct drm_device *dev,
          struct vbox_crtc *vbox_crtc,
          struct drm_encoder *encoder)
{
 struct vbox_connector *vbox_connector;
 struct drm_connector *connector;

 vbox_connector = kzalloc(sizeof(*vbox_connector), GFP_KERNEL);
 if (!vbox_connector)
  return -ENOMEM;

 connector = &vbox_connector->base;
 vbox_connector->vbox_crtc = vbox_crtc;

 drm_connector_init(dev, connector, &vbox_connector_funcs,
      DRM_MODE_CONNECTOR_VGA);
 drm_connector_helper_add(connector, &vbox_connector_helper_funcs);

 connector->interlace_allowed = 0;
 connector->doublescan_allowed = 0;

 drm_mode_create_suggested_offset_properties(dev);
 drm_object_attach_property(&connector->base,
       dev->mode_config.suggested_x_property, 0);
 drm_object_attach_property(&connector->base,
       dev->mode_config.suggested_y_property, 0);

 drm_connector_attach_encoder(connector, encoder);

 return 0;
}
