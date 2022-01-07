
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct it87_data {int dummy; } ;


 scalar_t__ has_newer_autopwm (struct it87_data const*) ;

__attribute__((used)) static u8 pwm_to_reg(const struct it87_data *data, long val)
{
 if (has_newer_autopwm(data))
  return val;
 else
  return val >> 1;
}
