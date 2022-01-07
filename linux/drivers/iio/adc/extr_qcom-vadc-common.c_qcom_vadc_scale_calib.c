
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vadc_linear_graph {scalar_t__ dx; int dy; scalar_t__ gnd; } ;
typedef scalar_t__ s64 ;


 scalar_t__ div64_s64 (scalar_t__,int ) ;

__attribute__((used)) static void qcom_vadc_scale_calib(const struct vadc_linear_graph *calib_graph,
      u16 adc_code,
      bool absolute,
      s64 *scale_voltage)
{
 *scale_voltage = (adc_code - calib_graph->gnd);
 *scale_voltage *= calib_graph->dx;
 *scale_voltage = div64_s64(*scale_voltage, calib_graph->dy);
 if (absolute)
  *scale_voltage += calib_graph->dx;

 if (*scale_voltage < 0)
  *scale_voltage = 0;
}
