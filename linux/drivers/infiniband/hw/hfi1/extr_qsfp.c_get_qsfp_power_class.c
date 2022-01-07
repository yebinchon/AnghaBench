
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int QSFP_HIGH_PWR (int ) ;
 scalar_t__ QSFP_HIGH_PWR_UNUSED ;
 int QSFP_PWR (int ) ;

int get_qsfp_power_class(u8 power_byte)
{
 if (QSFP_HIGH_PWR(power_byte) == QSFP_HIGH_PWR_UNUSED)

  return (QSFP_PWR(power_byte) + 1);






 return (QSFP_HIGH_PWR(power_byte) + 4);
}
