
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct sun4i_layer {struct sun4i_backend* backend; } ;
struct sun4i_backend {int frontend; } ;
struct drm_plane_state {TYPE_2__* fb; int plane; } ;
struct TYPE_4__ {int modifier; TYPE_1__* format; } ;
struct TYPE_3__ {int format; } ;


 scalar_t__ IS_ERR (int ) ;
 struct sun4i_layer* plane_to_sun4i_layer (int ) ;
 int sun4i_backend_format_is_supported (int ,int ) ;
 scalar_t__ sun4i_backend_plane_uses_scaler (struct drm_plane_state*) ;
 int sun4i_frontend_format_is_supported (int ,int ) ;

__attribute__((used)) static bool sun4i_backend_plane_uses_frontend(struct drm_plane_state *state)
{
 struct sun4i_layer *layer = plane_to_sun4i_layer(state->plane);
 struct sun4i_backend *backend = layer->backend;
 uint32_t format = state->fb->format->format;
 uint64_t modifier = state->fb->modifier;

 if (IS_ERR(backend->frontend))
  return 0;

 if (!sun4i_frontend_format_is_supported(format, modifier))
  return 0;

 if (!sun4i_backend_format_is_supported(format, modifier))
  return 1;
 if (sun4i_backend_plane_uses_scaler(state))
  return 1;





 return 0;
}
