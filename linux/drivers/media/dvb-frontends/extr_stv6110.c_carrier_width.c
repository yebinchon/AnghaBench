
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum fe_rolloff { ____Placeholder_fe_rolloff } fe_rolloff ;





__attribute__((used)) static u32 carrier_width(u32 symbol_rate, enum fe_rolloff rolloff)
{
 u32 rlf;

 switch (rolloff) {
 case 129:
  rlf = 20;
  break;
 case 128:
  rlf = 25;
  break;
 default:
  rlf = 35;
  break;
 }

 return symbol_rate + ((symbol_rate * rlf) / 100);
}
