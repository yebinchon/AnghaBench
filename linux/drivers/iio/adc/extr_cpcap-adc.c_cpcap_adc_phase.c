
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_adc_request {int channel; int bank_index; scalar_t__ result; struct cpcap_adc_phasing_tbl* phase_tbl; struct cpcap_adc_conversion_tbl* conv_tbl; } ;
struct cpcap_adc_phasing_tbl {scalar_t__ multiplier; scalar_t__ divider; scalar_t__ min; scalar_t__ max; int offset; } ;
struct cpcap_adc_conversion_tbl {int align_offset; int cal_offset; } ;





 int CPCAP_FOUR_POINT_TWO_ADC ;

__attribute__((used)) static void cpcap_adc_phase(struct cpcap_adc_request *req)
{
 const struct cpcap_adc_conversion_tbl *conv_tbl = req->conv_tbl;
 const struct cpcap_adc_phasing_tbl *phase_tbl = req->phase_tbl;
 int index = req->channel;


 switch (req->channel) {
 case 129:
 case 128:
  index = req->bank_index;
  req->result -= phase_tbl[index].offset;
  req->result -= CPCAP_FOUR_POINT_TWO_ADC;
  req->result *= phase_tbl[index].multiplier;
  if (phase_tbl[index].divider == 0)
   return;
  req->result /= phase_tbl[index].divider;
  req->result += CPCAP_FOUR_POINT_TWO_ADC;
  break;
 case 130:
  index = req->bank_index;

 default:
  req->result += conv_tbl[index].cal_offset;
  req->result += conv_tbl[index].align_offset;
  req->result *= phase_tbl[index].multiplier;
  if (phase_tbl[index].divider == 0)
   return;
  req->result /= phase_tbl[index].divider;
  req->result += phase_tbl[index].offset;
  break;
 }

 if (req->result < phase_tbl[index].min)
  req->result = phase_tbl[index].min;
 else if (req->result > phase_tbl[index].max)
  req->result = phase_tbl[index].max;
}
