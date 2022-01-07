
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int SMU11_VOLTAGE_SCALE ;

__attribute__((used)) static uint16_t convert_to_vddc(uint8_t vid)
{
 return (uint16_t) ((6200 - (vid * 25)) / SMU11_VOLTAGE_SCALE);
}
