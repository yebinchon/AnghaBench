
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_property_blob {int dummy; } ;
struct drm_plane_state {struct drm_property_blob* fb_damage_clips; } ;



__attribute__((used)) static void set_plane_damage(struct drm_plane_state *state,
        struct drm_property_blob *damage_blob)
{
 state->fb_damage_clips = damage_blob;
}
