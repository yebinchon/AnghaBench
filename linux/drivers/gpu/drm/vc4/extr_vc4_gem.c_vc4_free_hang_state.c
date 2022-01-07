
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int bo_count; } ;
struct vc4_hang_state {int * bo; TYPE_1__ user_state; } ;
struct drm_device {int dummy; } ;


 int drm_gem_object_put_unlocked (int ) ;
 int kfree (struct vc4_hang_state*) ;

__attribute__((used)) static void
vc4_free_hang_state(struct drm_device *dev, struct vc4_hang_state *state)
{
 unsigned int i;

 for (i = 0; i < state->user_state.bo_count; i++)
  drm_gem_object_put_unlocked(state->bo[i]);

 kfree(state);
}
