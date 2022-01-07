
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dln2_adc_demux_table {unsigned int from; unsigned int length; unsigned int to; } ;
struct dln2_adc {int demux_count; struct dln2_adc_demux_table* demux; } ;


 int DLN2_ADC_MAX_CHANNELS ;

__attribute__((used)) static void dln2_adc_add_demux(struct dln2_adc *dln2,
 unsigned int in_loc, unsigned int out_loc,
 unsigned int length)
{
 struct dln2_adc_demux_table *p = dln2->demux_count ?
  &dln2->demux[dln2->demux_count - 1] : ((void*)0);

 if (p && p->from + p->length == in_loc &&
  p->to + p->length == out_loc) {
  p->length += length;
 } else if (dln2->demux_count < DLN2_ADC_MAX_CHANNELS) {
  p = &dln2->demux[dln2->demux_count++];
  p->from = in_loc;
  p->to = out_loc;
  p->length = length;
 }
}
