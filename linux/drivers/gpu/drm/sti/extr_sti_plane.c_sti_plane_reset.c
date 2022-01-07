
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane {int type; TYPE_1__* state; } ;
struct TYPE_2__ {int zpos; } ;


 int drm_atomic_helper_plane_reset (struct drm_plane*) ;
 int sti_plane_get_default_zpos (int ) ;

void sti_plane_reset(struct drm_plane *plane)
{
 drm_atomic_helper_plane_reset(plane);
 plane->state->zpos = sti_plane_get_default_zpos(plane->type);
}
