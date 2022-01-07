
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct komeda_component_state {int changed_active_inputs; } ;


 int component_disabling_inputs (struct komeda_component_state*) ;

__attribute__((used)) static inline u16 component_changed_inputs(struct komeda_component_state *st)
{
 return component_disabling_inputs(st) | st->changed_active_inputs;
}
