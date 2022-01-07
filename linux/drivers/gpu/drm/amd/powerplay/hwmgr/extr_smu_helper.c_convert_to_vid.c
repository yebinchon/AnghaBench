
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int VOLTAGE_SCALE ;

uint8_t convert_to_vid(uint16_t vddc)
{
 return (uint8_t) ((6200 - (vddc * VOLTAGE_SCALE)) / 25);
}
