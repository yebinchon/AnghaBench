
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv {scalar_t__ regoff; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;
 scalar_t__ RSTV0910_P2_PRVIT ;
 int write_reg (struct stv*,scalar_t__,int) ;

__attribute__((used)) static int enable_puncture_rate(struct stv *state, enum fe_code_rate rate)
{
 u8 val;

 switch (rate) {
 case 133:
  val = 0x01;
  break;
 case 132:
  val = 0x02;
  break;
 case 131:
  val = 0x04;
  break;
 case 130:
  val = 0x08;
  break;
 case 129:
  val = 0x20;
  break;
 case 128:
 default:
  val = 0x2f;
  break;
 }

 return write_reg(state, RSTV0910_P2_PRVIT + state->regoff, val);
}
