
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpcap_adc_request {int timing; } ;
struct cpcap_adc {int done; int wq_data_avail; } ;


 int CPCAP_ADC_MAX_RETRIES ;
 int CPCAP_ADC_TIMING_IMM ;
 int ETIMEDOUT ;
 int cpcap_adc_setup_bank (struct cpcap_adc*,struct cpcap_adc_request*) ;
 int msecs_to_jiffies (int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int cpcap_adc_start_bank(struct cpcap_adc *ddata,
    struct cpcap_adc_request *req)
{
 int i, error;

 req->timing = CPCAP_ADC_TIMING_IMM;
 ddata->done = 0;

 for (i = 0; i < CPCAP_ADC_MAX_RETRIES; i++) {
  cpcap_adc_setup_bank(ddata, req);
  error = wait_event_interruptible_timeout(ddata->wq_data_avail,
        ddata->done,
        msecs_to_jiffies(50));
  if (error > 0)
   return 0;

  if (error == 0) {
   error = -ETIMEDOUT;
   continue;
  }

  if (error < 0)
   return error;
 }

 return error;
}
