
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_adc_request {int channel; int result; struct cpcap_adc_conversion_tbl* conv_tbl; } ;
struct cpcap_adc_conversion_tbl {scalar_t__ conv_type; scalar_t__ conv_offset; int divider; int multiplier; } ;


 int CPCAP_ADC_AD0 ;
 int CPCAP_ADC_AD3 ;
 int CPCAP_ADC_BATTI ;

 int CPCAP_ADC_BATTP ;

 scalar_t__ IIO_CHAN_INFO_RAW ;
 int cpcap_adc_table_to_millicelcius (int ) ;

__attribute__((used)) static void cpcap_adc_convert(struct cpcap_adc_request *req)
{
 const struct cpcap_adc_conversion_tbl *conv_tbl = req->conv_tbl;
 int index = req->channel;


 switch (req->channel) {
 case 128:
  index = CPCAP_ADC_BATTP;
  break;
 case 129:
  index = CPCAP_ADC_BATTI;
  break;
 default:
  break;
 }


 if (conv_tbl[index].conv_type == IIO_CHAN_INFO_RAW)
  return;


 if ((req->channel == CPCAP_ADC_AD0) ||
     (req->channel == CPCAP_ADC_AD3)) {
  req->result =
   cpcap_adc_table_to_millicelcius(req->result);

  return;
 }


 req->result *= conv_tbl[index].multiplier;
 if (conv_tbl[index].divider == 0)
  return;
 req->result /= conv_tbl[index].divider;
 req->result += conv_tbl[index].conv_offset;
}
