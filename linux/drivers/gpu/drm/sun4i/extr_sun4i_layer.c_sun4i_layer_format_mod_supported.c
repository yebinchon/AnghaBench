
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct sun4i_layer {TYPE_1__* backend; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {int frontend; } ;


 scalar_t__ IS_ERR_OR_NULL (int ) ;
 struct sun4i_layer* plane_to_sun4i_layer (struct drm_plane*) ;
 scalar_t__ sun4i_backend_format_is_supported (int ,int ) ;
 scalar_t__ sun4i_frontend_format_is_supported (int ,int ) ;

__attribute__((used)) static bool sun4i_layer_format_mod_supported(struct drm_plane *plane,
          uint32_t format, uint64_t modifier)
{
 struct sun4i_layer *layer = plane_to_sun4i_layer(plane);

 if (IS_ERR_OR_NULL(layer->backend->frontend))
  sun4i_backend_format_is_supported(format, modifier);

 return sun4i_backend_format_is_supported(format, modifier) ||
        sun4i_frontend_format_is_supported(format, modifier);
}
