
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct analogix_dp_device {scalar_t__ reg_base; scalar_t__ hpd_gpiod; } ;


 scalar_t__ ANALOGIX_DP_SYS_CTL_3 ;
 int EINVAL ;
 int HPD_STATUS ;
 scalar_t__ gpiod_get_value (scalar_t__) ;
 int readl (scalar_t__) ;

int analogix_dp_get_plug_in_status(struct analogix_dp_device *dp)
{
 u32 reg;

 if (dp->hpd_gpiod) {
  if (gpiod_get_value(dp->hpd_gpiod))
   return 0;
 } else {
  reg = readl(dp->reg_base + ANALOGIX_DP_SYS_CTL_3);
  if (reg & HPD_STATUS)
   return 0;
 }

 return -EINVAL;
}
