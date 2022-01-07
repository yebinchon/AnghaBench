
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ADC_TO_MV(int adc, int range)
{
 return (adc * range) / 1024;
}
