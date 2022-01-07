
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_display_mode {int dummy; } ;
struct TYPE_3__ {size_t mode; } ;
struct drm_connector_state {TYPE_1__ tv; } ;
struct drm_connector {int dev; struct drm_connector_state* state; } ;
struct TYPE_4__ {int mode; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 struct drm_display_mode* drm_mode_duplicate (int ,int ) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 TYPE_2__* vc4_vec_tv_modes ;

__attribute__((used)) static int vc4_vec_connector_get_modes(struct drm_connector *connector)
{
 struct drm_connector_state *state = connector->state;
 struct drm_display_mode *mode;

 mode = drm_mode_duplicate(connector->dev,
      vc4_vec_tv_modes[state->tv.mode].mode);
 if (!mode) {
  DRM_ERROR("Failed to create a new display mode\n");
  return -ENOMEM;
 }

 drm_mode_probed_add(connector, mode);

 return 1;
}
