
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DAC_LIMIT (int) ;

__attribute__((used)) static u8 pwm_to_dac(unsigned int pwm, bool v12)
{
 int limit = DAC_LIMIT(v12);

 return limit - (limit * pwm) / 255;
}
