
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int tsl2563_adc_shiftbits (int ) ;

__attribute__((used)) static u32 tsl2563_normalize_adc(u16 adc, u8 timing)
{
 return adc << tsl2563_adc_shiftbits(timing);
}
