
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_component_state {int active_inputs; struct komeda_component* component; } ;
struct komeda_component_output {TYPE_1__* component; } ;
struct komeda_component {int max_active_inputs; int name; } ;
struct TYPE_2__ {int name; } ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ,int) ;
 int EINVAL ;
 scalar_t__ has_bit (int,int ) ;

__attribute__((used)) static int
komeda_component_check_input(struct komeda_component_state *state,
        struct komeda_component_output *input,
        int idx)
{
 struct komeda_component *c = state->component;

 if ((idx < 0) || (idx >= c->max_active_inputs)) {
  DRM_DEBUG_ATOMIC("%s required an invalid %s-input[%d].\n",
     input->component->name, c->name, idx);
  return -EINVAL;
 }

 if (has_bit(idx, state->active_inputs)) {
  DRM_DEBUG_ATOMIC("%s required %s-input[%d] has been occupied already.\n",
     input->component->name, c->name, idx);
  return -EINVAL;
 }

 return 0;
}
