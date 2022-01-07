
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_component_state {scalar_t__ changed_active_inputs; scalar_t__ active_inputs; scalar_t__ affected_inputs; int * binding_user; } ;



__attribute__((used)) static void
komeda_component_state_reset(struct komeda_component_state *st)
{
 st->binding_user = ((void*)0);
 st->affected_inputs = st->active_inputs;
 st->active_inputs = 0;
 st->changed_active_inputs = 0;
}
