
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct komeda_component_state {int affected_inputs; int active_inputs; } ;



__attribute__((used)) static inline u16 component_disabling_inputs(struct komeda_component_state *st)
{
 return st->affected_inputs ^ st->active_inputs;
}
