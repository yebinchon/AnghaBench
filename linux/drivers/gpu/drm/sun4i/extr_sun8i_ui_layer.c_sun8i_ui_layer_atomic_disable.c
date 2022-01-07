
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun8i_ui_layer {int overlay; int channel; struct sun8i_mixer* mixer; } ;
struct sun8i_mixer {int dummy; } ;
struct drm_plane_state {unsigned int normalized_zpos; } ;
struct drm_plane {int dummy; } ;


 struct sun8i_ui_layer* plane_to_sun8i_ui_layer (struct drm_plane*) ;
 int sun8i_ui_layer_enable (struct sun8i_mixer*,int ,int ,int,int ,unsigned int) ;

__attribute__((used)) static void sun8i_ui_layer_atomic_disable(struct drm_plane *plane,
       struct drm_plane_state *old_state)
{
 struct sun8i_ui_layer *layer = plane_to_sun8i_ui_layer(plane);
 unsigned int old_zpos = old_state->normalized_zpos;
 struct sun8i_mixer *mixer = layer->mixer;

 sun8i_ui_layer_enable(mixer, layer->channel, layer->overlay, 0, 0,
         old_zpos);
}
