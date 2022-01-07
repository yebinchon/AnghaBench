
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct komeda_component_state {int active_inputs; struct komeda_component_output* inputs; } ;
struct komeda_component_output {scalar_t__ output_port; TYPE_1__* component; } ;
struct TYPE_2__ {scalar_t__ hw_id; } ;


 scalar_t__ has_bit (int,int ) ;

__attribute__((used)) static inline u32 to_d71_input_id(struct komeda_component_state *st, int idx)
{
 struct komeda_component_output *input = &st->inputs[idx];


 if (has_bit(idx, st->active_inputs))
  return input->component->hw_id + input->output_port;
 else
  return 0;
}
