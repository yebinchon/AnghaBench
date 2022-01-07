
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ADC_TO_CURR(int adc, int gain)
{
 return adc * 1400000 / (gain * 255);
}
