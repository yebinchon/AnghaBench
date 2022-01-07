
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adc5_chip {int dummy; } ;
typedef int status1 ;


 int ADC5_CONV_TIME_MAX_US ;
 int ADC5_CONV_TIME_MIN_US ;
 unsigned int ADC5_CONV_TIME_RETRY ;
 int ADC5_USR_STATUS1 ;
 int ADC5_USR_STATUS1_EOC ;
 int ADC5_USR_STATUS1_REQ_STS_EOC_MASK ;
 int ETIMEDOUT ;
 int adc5_read (struct adc5_chip*,int ,int *,int) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int adc5_poll_wait_eoc(struct adc5_chip *adc)
{
 unsigned int count, retry = ADC5_CONV_TIME_RETRY;
 u8 status1;
 int ret;

 for (count = 0; count < retry; count++) {
  ret = adc5_read(adc, ADC5_USR_STATUS1, &status1,
       sizeof(status1));
  if (ret)
   return ret;

  status1 &= ADC5_USR_STATUS1_REQ_STS_EOC_MASK;
  if (status1 == ADC5_USR_STATUS1_EOC)
   return 0;

  usleep_range(ADC5_CONV_TIME_MIN_US, ADC5_CONV_TIME_MAX_US);
 }

 return -ETIMEDOUT;
}
