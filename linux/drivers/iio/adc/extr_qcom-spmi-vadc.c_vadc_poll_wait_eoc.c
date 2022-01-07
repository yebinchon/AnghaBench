
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vadc_priv {int dummy; } ;


 int ETIMEDOUT ;
 int VADC_CONV_TIME_MAX_US ;
 unsigned int VADC_CONV_TIME_MIN_US ;
 int VADC_STATUS1 ;
 int VADC_STATUS1_EOC ;
 int VADC_STATUS1_REQ_STS_EOC_MASK ;
 int usleep_range (unsigned int,int ) ;
 int vadc_read (struct vadc_priv*,int ,int *) ;
 int vadc_show_status (struct vadc_priv*) ;

__attribute__((used)) static int vadc_poll_wait_eoc(struct vadc_priv *vadc, unsigned int interval_us)
{
 unsigned int count, retry;
 u8 sta1;
 int ret;

 retry = interval_us / VADC_CONV_TIME_MIN_US;

 for (count = 0; count < retry; count++) {
  ret = vadc_read(vadc, VADC_STATUS1, &sta1);
  if (ret)
   return ret;

  sta1 &= VADC_STATUS1_REQ_STS_EOC_MASK;
  if (sta1 == VADC_STATUS1_EOC)
   return 0;

  usleep_range(VADC_CONV_TIME_MIN_US, VADC_CONV_TIME_MAX_US);
 }

 vadc_show_status(vadc);

 return -ETIMEDOUT;
}
