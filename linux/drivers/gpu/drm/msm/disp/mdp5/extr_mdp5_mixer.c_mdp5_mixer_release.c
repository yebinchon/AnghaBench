
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp5_hw_mixer_state {TYPE_1__** hwmixer_to_crtc; } ;
struct mdp5_hw_mixer {size_t idx; int name; } ;
struct mdp5_global_state {struct mdp5_hw_mixer_state hwmixer; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int DBG (char*,int ,int ) ;
 scalar_t__ WARN_ON (int) ;
 struct mdp5_global_state* mdp5_get_global_state (struct drm_atomic_state*) ;

void mdp5_mixer_release(struct drm_atomic_state *s, struct mdp5_hw_mixer *mixer)
{
 struct mdp5_global_state *global_state = mdp5_get_global_state(s);
 struct mdp5_hw_mixer_state *new_state = &global_state->hwmixer;

 if (!mixer)
  return;

 if (WARN_ON(!new_state->hwmixer_to_crtc[mixer->idx]))
  return;

 DBG("%s: release from crtc %s", mixer->name,
     new_state->hwmixer_to_crtc[mixer->idx]->name);

 new_state->hwmixer_to_crtc[mixer->idx] = ((void*)0);
}
