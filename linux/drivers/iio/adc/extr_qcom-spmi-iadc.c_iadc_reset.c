
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iadc_chip {int dummy; } ;


 int IADC_FOLLOW_WARM_RB ;
 int IADC_PERH_RESET_CTL3 ;
 int IADC_SEC_ACCESS ;
 int IADC_SEC_ACCESS_DATA ;
 int iadc_read (struct iadc_chip*,int ,int *) ;
 int iadc_write (struct iadc_chip*,int ,int ) ;

__attribute__((used)) static int iadc_reset(struct iadc_chip *iadc)
{
 u8 data;
 int ret;

 ret = iadc_write(iadc, IADC_SEC_ACCESS, IADC_SEC_ACCESS_DATA);
 if (ret < 0)
  return ret;

 ret = iadc_read(iadc, IADC_PERH_RESET_CTL3, &data);
 if (ret < 0)
  return ret;

 ret = iadc_write(iadc, IADC_SEC_ACCESS, IADC_SEC_ACCESS_DATA);
 if (ret < 0)
  return ret;

 data |= IADC_FOLLOW_WARM_RB;

 return iadc_write(iadc, IADC_PERH_RESET_CTL3, data);
}
