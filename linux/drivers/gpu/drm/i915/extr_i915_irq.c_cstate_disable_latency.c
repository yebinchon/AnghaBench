
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_state {int exit_latency; int name; } ;
struct cpuidle_driver {int state_count; struct cpuidle_state* states; } ;


 struct cpuidle_driver* cpuidle_get_driver () ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int cstate_disable_latency(const char *name)
{
 const struct cpuidle_driver *drv;
 int i;

 drv = cpuidle_get_driver();
 if (!drv)
  return 0;

 for (i = 0; i < drv->state_count; i++) {
  const struct cpuidle_state *state = &drv->states[i];

  if (!strcmp(state->name, name))
   return state->exit_latency ?
    state->exit_latency - 1 : 0;
 }

 return 0;
}
