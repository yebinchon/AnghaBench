
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5h1420_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;


 int FEC_1_2 ;
 int FEC_2_3 ;
 int FEC_3_4 ;
 int FEC_5_6 ;
 int FEC_6_7 ;
 int FEC_7_8 ;
 int FEC_NONE ;
 int s5h1420_readreg (struct s5h1420_state*,int) ;

__attribute__((used)) static enum fe_code_rate s5h1420_getfec(struct s5h1420_state *state)
{
 switch(s5h1420_readreg(state, 0x32) & 0x07) {
 case 0:
  return FEC_1_2;

 case 1:
  return FEC_2_3;

 case 2:
  return FEC_3_4;

 case 3:
  return FEC_5_6;

 case 4:
  return FEC_6_7;

 case 5:
  return FEC_7_8;
 }

 return FEC_NONE;
}
