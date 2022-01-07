
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int crtc_w; int crtc_h; TYPE_2__* plane; } ;
struct intel_plane_state {TYPE_3__ base; } ;
struct drm_mode_config {int cursor_width; int cursor_height; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct drm_mode_config mode_config; } ;



__attribute__((used)) static bool intel_cursor_size_ok(const struct intel_plane_state *plane_state)
{
 const struct drm_mode_config *config =
  &plane_state->base.plane->dev->mode_config;
 int width = plane_state->base.crtc_w;
 int height = plane_state->base.crtc_h;

 return width > 0 && width <= config->cursor_width &&
  height > 0 && height <= config->cursor_height;
}
