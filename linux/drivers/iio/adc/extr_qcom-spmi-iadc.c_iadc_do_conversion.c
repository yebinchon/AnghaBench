
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iadc_chip {int dev; int complete; scalar_t__ poll_eoc; } ;


 int BIT (int ) ;
 int ETIMEDOUT ;
 int IADC_CONV_TIME_MIN_US ;
 int IADC_DEF_AVG_SAMPLES ;
 int dev_err (int ,char*) ;
 int iadc_configure (struct iadc_chip*,int) ;
 int iadc_poll_wait_eoc (struct iadc_chip*,int) ;
 int iadc_read_result (struct iadc_chip*,int *) ;
 int iadc_set_state (struct iadc_chip*,int) ;
 int usecs_to_jiffies (unsigned int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int iadc_do_conversion(struct iadc_chip *iadc, int chan, u16 *data)
{
 unsigned int wait;
 int ret;

 ret = iadc_configure(iadc, chan);
 if (ret < 0)
  goto exit;

 wait = BIT(IADC_DEF_AVG_SAMPLES) * IADC_CONV_TIME_MIN_US * 2;

 if (iadc->poll_eoc) {
  ret = iadc_poll_wait_eoc(iadc, wait);
 } else {
  ret = wait_for_completion_timeout(&iadc->complete,
   usecs_to_jiffies(wait));
  if (!ret)
   ret = -ETIMEDOUT;
  else

   ret = iadc_poll_wait_eoc(iadc, IADC_CONV_TIME_MIN_US);
 }

 if (!ret)
  ret = iadc_read_result(iadc, data);
exit:
 iadc_set_state(iadc, 0);
 if (ret < 0)
  dev_err(iadc->dev, "conversion failed\n");

 return ret;
}
