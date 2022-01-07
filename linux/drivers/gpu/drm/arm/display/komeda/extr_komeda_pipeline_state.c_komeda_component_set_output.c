
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct komeda_component_output {int output_port; struct komeda_component* component; } ;
struct komeda_component {int dummy; } ;



__attribute__((used)) static void
komeda_component_set_output(struct komeda_component_output *output,
       struct komeda_component *comp,
       u8 output_port)
{
 output->component = comp;
 output->output_port = output_port;
}
