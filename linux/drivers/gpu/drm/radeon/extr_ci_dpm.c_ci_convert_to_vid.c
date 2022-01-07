
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int VOLTAGE_SCALE ;

__attribute__((used)) static u8 ci_convert_to_vid(u16 vddc)
{
 return (6200 - (vddc * VOLTAGE_SCALE)) / 25;
}
