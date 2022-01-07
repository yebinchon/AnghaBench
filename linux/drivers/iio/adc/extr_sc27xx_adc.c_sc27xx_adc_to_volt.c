
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_adc_linear_graph {int volt0; int volt1; int adc1; int adc0; } ;



__attribute__((used)) static int sc27xx_adc_to_volt(struct sc27xx_adc_linear_graph *graph,
         int raw_adc)
{
 int tmp;

 tmp = (graph->volt0 - graph->volt1) * (raw_adc - graph->adc1);
 tmp /= (graph->adc0 - graph->adc1);
 tmp += graph->volt1;

 return tmp < 0 ? 0 : tmp;
}
