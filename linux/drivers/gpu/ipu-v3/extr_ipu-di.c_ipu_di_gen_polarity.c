
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DI_GEN_POLARITY_1 ;
 int DI_GEN_POLARITY_2 ;
 int DI_GEN_POLARITY_3 ;
 int DI_GEN_POLARITY_4 ;
 int DI_GEN_POLARITY_5 ;
 int DI_GEN_POLARITY_6 ;
 int DI_GEN_POLARITY_7 ;
 int DI_GEN_POLARITY_8 ;

__attribute__((used)) static u32 ipu_di_gen_polarity(int pin)
{
 switch (pin) {
 case 1:
  return DI_GEN_POLARITY_1;
 case 2:
  return DI_GEN_POLARITY_2;
 case 3:
  return DI_GEN_POLARITY_3;
 case 4:
  return DI_GEN_POLARITY_4;
 case 5:
  return DI_GEN_POLARITY_5;
 case 6:
  return DI_GEN_POLARITY_6;
 case 7:
  return DI_GEN_POLARITY_7;
 case 8:
  return DI_GEN_POLARITY_8;
 }
 return 0;
}
