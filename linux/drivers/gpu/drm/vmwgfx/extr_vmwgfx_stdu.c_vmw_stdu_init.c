
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_plane {int dummy; } ;
struct drm_connector {int base; int status; } ;
struct drm_encoder {int possible_crtcs; scalar_t__ possible_clones; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {unsigned int unit; int pref_active; int is_implicit; struct drm_plane cursor; struct drm_plane primary; int pref_height; int pref_width; struct drm_connector connector; struct drm_encoder encoder; struct drm_crtc crtc; } ;
struct vmw_screen_target_display_unit {TYPE_1__ base; } ;
struct vmw_private {int hotplug_mode_update_property; int initial_height; int initial_width; struct drm_device* dev; } ;
struct TYPE_4__ {int suggested_y_property; int suggested_x_property; } ;
struct drm_device {TYPE_2__ mode_config; } ;


 int ARRAY_SIZE (int ) ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int DRM_MODE_ENCODER_VIRTUAL ;
 int DRM_PLANE_TYPE_CURSOR ;
 int DRM_PLANE_TYPE_PRIMARY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_connector_register (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int *,int *) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_mode_crtc_set_gamma_size (struct drm_crtc*,int) ;
 int drm_object_attach_property (int *,int ,int) ;
 int drm_plane_cleanup (struct drm_plane*) ;
 int drm_plane_enable_fb_damage_clips (struct drm_plane*) ;
 int drm_plane_helper_add (struct drm_plane*,int *) ;
 int drm_universal_plane_init (struct drm_device*,struct drm_plane*,int ,int *,int ,int ,int *,int ,int *) ;
 int kfree (struct vmw_screen_target_display_unit*) ;
 struct vmw_screen_target_display_unit* kzalloc (int,int ) ;
 int vmw_cursor_plane_formats ;
 int vmw_du_connector_detect (struct drm_connector*,int) ;
 int vmw_du_connector_reset (struct drm_connector*) ;
 int vmw_du_crtc_reset (struct drm_crtc*) ;
 int vmw_du_plane_reset (struct drm_plane*) ;
 int vmw_primary_plane_formats ;
 int vmw_stdu_connector_funcs ;
 int vmw_stdu_connector_helper_funcs ;
 int vmw_stdu_crtc_funcs ;
 int vmw_stdu_crtc_helper_funcs ;
 int vmw_stdu_cursor_funcs ;
 int vmw_stdu_cursor_plane_helper_funcs ;
 int vmw_stdu_encoder_funcs ;
 int vmw_stdu_plane_funcs ;
 int vmw_stdu_primary_plane_helper_funcs ;

__attribute__((used)) static int vmw_stdu_init(struct vmw_private *dev_priv, unsigned unit)
{
 struct vmw_screen_target_display_unit *stdu;
 struct drm_device *dev = dev_priv->dev;
 struct drm_connector *connector;
 struct drm_encoder *encoder;
 struct drm_plane *primary, *cursor;
 struct drm_crtc *crtc;
 int ret;


 stdu = kzalloc(sizeof(*stdu), GFP_KERNEL);
 if (!stdu)
  return -ENOMEM;

 stdu->base.unit = unit;
 crtc = &stdu->base.crtc;
 encoder = &stdu->base.encoder;
 connector = &stdu->base.connector;
 primary = &stdu->base.primary;
 cursor = &stdu->base.cursor;

 stdu->base.pref_active = (unit == 0);
 stdu->base.pref_width = dev_priv->initial_width;
 stdu->base.pref_height = dev_priv->initial_height;
 stdu->base.is_implicit = 0;


 vmw_du_plane_reset(primary);

 ret = drm_universal_plane_init(dev, primary,
           0, &vmw_stdu_plane_funcs,
           vmw_primary_plane_formats,
           ARRAY_SIZE(vmw_primary_plane_formats),
           ((void*)0), DRM_PLANE_TYPE_PRIMARY, ((void*)0));
 if (ret) {
  DRM_ERROR("Failed to initialize primary plane");
  goto err_free;
 }

 drm_plane_helper_add(primary, &vmw_stdu_primary_plane_helper_funcs);
 drm_plane_enable_fb_damage_clips(primary);


 vmw_du_plane_reset(cursor);

 ret = drm_universal_plane_init(dev, cursor,
   0, &vmw_stdu_cursor_funcs,
   vmw_cursor_plane_formats,
   ARRAY_SIZE(vmw_cursor_plane_formats),
   ((void*)0), DRM_PLANE_TYPE_CURSOR, ((void*)0));
 if (ret) {
  DRM_ERROR("Failed to initialize cursor plane");
  drm_plane_cleanup(&stdu->base.primary);
  goto err_free;
 }

 drm_plane_helper_add(cursor, &vmw_stdu_cursor_plane_helper_funcs);

 vmw_du_connector_reset(connector);

 ret = drm_connector_init(dev, connector, &vmw_stdu_connector_funcs,
     DRM_MODE_CONNECTOR_VIRTUAL);
 if (ret) {
  DRM_ERROR("Failed to initialize connector\n");
  goto err_free;
 }

 drm_connector_helper_add(connector, &vmw_stdu_connector_helper_funcs);
 connector->status = vmw_du_connector_detect(connector, 0);

 ret = drm_encoder_init(dev, encoder, &vmw_stdu_encoder_funcs,
          DRM_MODE_ENCODER_VIRTUAL, ((void*)0));
 if (ret) {
  DRM_ERROR("Failed to initialize encoder\n");
  goto err_free_connector;
 }

 (void) drm_connector_attach_encoder(connector, encoder);
 encoder->possible_crtcs = (1 << unit);
 encoder->possible_clones = 0;

 ret = drm_connector_register(connector);
 if (ret) {
  DRM_ERROR("Failed to register connector\n");
  goto err_free_encoder;
 }

 vmw_du_crtc_reset(crtc);
 ret = drm_crtc_init_with_planes(dev, crtc, &stdu->base.primary,
     &stdu->base.cursor,
     &vmw_stdu_crtc_funcs, ((void*)0));
 if (ret) {
  DRM_ERROR("Failed to initialize CRTC\n");
  goto err_free_unregister;
 }

 drm_crtc_helper_add(crtc, &vmw_stdu_crtc_helper_funcs);

 drm_mode_crtc_set_gamma_size(crtc, 256);

 drm_object_attach_property(&connector->base,
       dev_priv->hotplug_mode_update_property, 1);
 drm_object_attach_property(&connector->base,
       dev->mode_config.suggested_x_property, 0);
 drm_object_attach_property(&connector->base,
       dev->mode_config.suggested_y_property, 0);
 return 0;

err_free_unregister:
 drm_connector_unregister(connector);
err_free_encoder:
 drm_encoder_cleanup(encoder);
err_free_connector:
 drm_connector_cleanup(connector);
err_free:
 kfree(stdu);
 return ret;
}
