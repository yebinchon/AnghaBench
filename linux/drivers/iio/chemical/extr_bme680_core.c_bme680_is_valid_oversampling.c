
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_power_of_2 (int) ;

__attribute__((used)) static bool bme680_is_valid_oversampling(int rate)
{
 return (rate > 0 && rate <= 16 && is_power_of_2(rate));
}
