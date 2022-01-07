
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adc12138 {int acquisition_time; TYPE_1__* spi; int complete; } ;
struct TYPE_2__ {int dev; } ;


 int ADC12138_MODE_ACQUISITION_TIME_10 ;
 int ADC12138_MODE_ACQUISITION_TIME_18 ;
 int ADC12138_MODE_ACQUISITION_TIME_34 ;
 int ADC12138_MODE_ACQUISITION_TIME_6 ;
 int ADC12138_MODE_AUTO_CAL ;
 int ADC12138_STATUS_CAL ;
 int EINVAL ;
 int EIO ;
 int adc12138_mode_programming (struct adc12138*,int ,int *,int) ;
 int adc12138_read_status (struct adc12138*) ;
 int adc12138_wait_eoc (struct adc12138*,int ) ;
 int dev_warn (int *,char*,int) ;
 int msecs_to_jiffies (int) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int adc12138_init(struct adc12138 *adc)
{
 int ret;
 int status;
 u8 mode;
 u8 trash;

 reinit_completion(&adc->complete);

 ret = adc12138_mode_programming(adc, ADC12138_MODE_AUTO_CAL, &trash, 1);
 if (ret)
  return ret;


 status = adc12138_read_status(adc);
 if (status < 0)
  return status;

 adc12138_wait_eoc(adc, msecs_to_jiffies(100));

 status = adc12138_read_status(adc);
 if (status & ADC12138_STATUS_CAL) {
  dev_warn(&adc->spi->dev,
   "Auto Cal sequence is still in progress: %#x\n",
   status);
  return -EIO;
 }

 switch (adc->acquisition_time) {
 case 6:
  mode = ADC12138_MODE_ACQUISITION_TIME_6;
  break;
 case 10:
  mode = ADC12138_MODE_ACQUISITION_TIME_10;
  break;
 case 18:
  mode = ADC12138_MODE_ACQUISITION_TIME_18;
  break;
 case 34:
  mode = ADC12138_MODE_ACQUISITION_TIME_34;
  break;
 default:
  return -EINVAL;
 }

 return adc12138_mode_programming(adc, mode, &trash, 1);
}
