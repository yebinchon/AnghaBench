
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_plane_state {int base; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 int WARN_ON (int ) ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,int *) ;
 struct vc4_plane_state* kzalloc (int,int ) ;

__attribute__((used)) static void vc4_plane_reset(struct drm_plane *plane)
{
 struct vc4_plane_state *vc4_state;

 WARN_ON(plane->state);

 vc4_state = kzalloc(sizeof(*vc4_state), GFP_KERNEL);
 if (!vc4_state)
  return;

 __drm_atomic_helper_plane_reset(plane, &vc4_state->base);
}
