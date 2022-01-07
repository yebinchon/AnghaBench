
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tv_mode {int name; } ;
struct drm_display_mode {int name; } ;
struct drm_connector {int dev; } ;


 int ARRAY_SIZE (struct tv_mode*) ;
 int DRM_ERROR (char*) ;
 struct drm_display_mode* drm_mode_create (int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 int strcpy (int ,int ) ;
 int sun4i_tv_mode_to_drm_mode (struct tv_mode const*,struct drm_display_mode*) ;
 struct tv_mode* tv_modes ;

__attribute__((used)) static int sun4i_tv_comp_get_modes(struct drm_connector *connector)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
  struct drm_display_mode *mode;
  const struct tv_mode *tv_mode = &tv_modes[i];

  mode = drm_mode_create(connector->dev);
  if (!mode) {
   DRM_ERROR("Failed to create a new display mode\n");
   return 0;
  }

  strcpy(mode->name, tv_mode->name);

  sun4i_tv_mode_to_drm_mode(tv_mode, mode);
  drm_mode_probed_add(connector, mode);
 }

 return i;
}
