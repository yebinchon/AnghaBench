
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_component_state {int affected_inputs; int active_inputs; int changed_active_inputs; int * inputs; struct komeda_component* component; } ;
struct komeda_component_output {int dummy; } ;
struct komeda_component {int max_active_inputs; } ;


 int BIT (int) ;
 int WARN_ON (int) ;
 int has_bit (int,int ) ;
 scalar_t__ memcmp (int *,struct komeda_component_output*,int) ;
 int memcpy (int *,struct komeda_component_output*,int) ;

__attribute__((used)) static void
komeda_component_add_input(struct komeda_component_state *state,
      struct komeda_component_output *input,
      int idx)
{
 struct komeda_component *c = state->component;

 WARN_ON((idx < 0 || idx >= c->max_active_inputs));






 if (!has_bit(idx, state->affected_inputs) ||
     memcmp(&state->inputs[idx], input, sizeof(*input))) {
  memcpy(&state->inputs[idx], input, sizeof(*input));
  state->changed_active_inputs |= BIT(idx);
 }
 state->active_inputs |= BIT(idx);
 state->affected_inputs |= BIT(idx);
}
