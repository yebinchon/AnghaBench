
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {int dummy; } ;


 int analogix_dp_config_interrupt (struct analogix_dp_device*) ;
 int analogix_dp_enable_sw_function (struct analogix_dp_device*) ;
 int analogix_dp_init_analog_func (struct analogix_dp_device*) ;
 int analogix_dp_init_analog_param (struct analogix_dp_device*) ;
 int analogix_dp_init_aux (struct analogix_dp_device*) ;
 int analogix_dp_init_hpd (struct analogix_dp_device*) ;
 int analogix_dp_init_interrupt (struct analogix_dp_device*) ;
 int analogix_dp_reset (struct analogix_dp_device*) ;
 int analogix_dp_swreset (struct analogix_dp_device*) ;

__attribute__((used)) static int analogix_dp_init_dp(struct analogix_dp_device *dp)
{
 int ret;

 analogix_dp_reset(dp);

 analogix_dp_swreset(dp);

 analogix_dp_init_analog_param(dp);
 analogix_dp_init_interrupt(dp);


 analogix_dp_enable_sw_function(dp);

 analogix_dp_config_interrupt(dp);
 ret = analogix_dp_init_analog_func(dp);
 if (ret)
  return ret;

 analogix_dp_init_hpd(dp);
 analogix_dp_init_aux(dp);
 return 0;
}
