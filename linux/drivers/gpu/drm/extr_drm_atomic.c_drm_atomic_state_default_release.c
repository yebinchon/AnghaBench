
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_atomic_state {int private_objs; int planes; int crtcs; int connectors; } ;


 int kfree (int ) ;

void drm_atomic_state_default_release(struct drm_atomic_state *state)
{
 kfree(state->connectors);
 kfree(state->crtcs);
 kfree(state->planes);
 kfree(state->private_objs);
}
