
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun8i_ui_layer {int overlay; int channel; struct sun8i_mixer* mixer; } ;
struct sun8i_mixer {int dummy; } ;
struct drm_plane_state {unsigned int normalized_zpos; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_2__ {unsigned int normalized_zpos; int visible; } ;


 struct sun8i_ui_layer* plane_to_sun8i_ui_layer (struct drm_plane*) ;
 int sun8i_ui_layer_enable (struct sun8i_mixer*,int ,int ,int,unsigned int,unsigned int) ;
 int sun8i_ui_layer_update_buffer (struct sun8i_mixer*,int ,int ,struct drm_plane*) ;
 int sun8i_ui_layer_update_coord (struct sun8i_mixer*,int ,int ,struct drm_plane*,unsigned int) ;
 int sun8i_ui_layer_update_formats (struct sun8i_mixer*,int ,int ,struct drm_plane*) ;

__attribute__((used)) static void sun8i_ui_layer_atomic_update(struct drm_plane *plane,
      struct drm_plane_state *old_state)
{
 struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
 unsigned int zpos = plane->state->normalized_zpos;
 unsigned int old_zpos = old_state->normalized_zpos;
 struct sun8i_mixer *mixer = layer->mixer;

 if (!plane->state->visible) {
  sun8i_ui_layer_enable(mixer, layer->channel,
          layer->overlay, 0, 0, old_zpos);
  return;
 }

 sun8i_ui_layer_update_coord(mixer, layer->channel,
        layer->overlay, plane, zpos);
 sun8i_ui_layer_update_formats(mixer, layer->channel,
          layer->overlay, plane);
 sun8i_ui_layer_update_buffer(mixer, layer->channel,
         layer->overlay, plane);
 sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay,
         1, zpos, old_zpos);
}
