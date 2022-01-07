
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum fe_stv0900_rolloff { ____Placeholder_fe_stv0900_rolloff } fe_stv0900_rolloff ;






__attribute__((used)) static u32 stv0900_carrier_width(u32 srate, enum fe_stv0900_rolloff ro)
{
 u32 rolloff;

 switch (ro) {
 case 130:
  rolloff = 20;
  break;
 case 129:
  rolloff = 25;
  break;
 case 128:
 default:
  rolloff = 35;
  break;
 }

 return srate + (srate * rolloff) / 100;
}
