
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct it87_data {int dummy; } ;


 scalar_t__ has_newer_autopwm (struct it87_data const*) ;

__attribute__((used)) static int pwm_from_reg(const struct it87_data *data, u8 reg)
{
 if (has_newer_autopwm(data))
  return reg;
 else
  return (reg & 0x7f) << 1;
}
