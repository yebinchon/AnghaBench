
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t scale_fan_gain_settings(uint16_t raw_setting)
{
 uint32_t tmp;
 tmp = raw_setting * 4096 / 100;
 return (uint16_t)tmp;
}
