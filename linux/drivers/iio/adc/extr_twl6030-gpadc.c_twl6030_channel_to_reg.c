
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ TWL6030_GPADC_GPCH0_LSB ;

__attribute__((used)) static u8 twl6030_channel_to_reg(int channel)
{
 return TWL6030_GPADC_GPCH0_LSB + 2 * channel;
}
