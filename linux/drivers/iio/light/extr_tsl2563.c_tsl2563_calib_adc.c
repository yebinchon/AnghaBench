
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long CALIB_FRAC_BITS ;

__attribute__((used)) static u32 tsl2563_calib_adc(u32 adc, u32 calib)
{
 unsigned long scaled = adc;

 scaled *= calib;
 scaled >>= CALIB_FRAC_BITS;

 return (u32) scaled;
}
