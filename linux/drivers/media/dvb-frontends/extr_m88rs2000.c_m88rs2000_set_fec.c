
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct m88rs2000_state {int dummy; } ;
typedef enum fe_code_rate { ____Placeholder_fe_code_rate } fe_code_rate ;
 int m88rs2000_readreg (struct m88rs2000_state*,int) ;
 int m88rs2000_writereg (struct m88rs2000_state*,int,int) ;

__attribute__((used)) static int m88rs2000_set_fec(struct m88rs2000_state *state,
        enum fe_code_rate fec)
{
 u8 fec_set, reg;
 int ret;

 switch (fec) {
 case 133:
  fec_set = 0x8;
  break;
 case 132:
  fec_set = 0x10;
  break;
 case 131:
  fec_set = 0x20;
  break;
 case 130:
  fec_set = 0x40;
  break;
 case 129:
  fec_set = 0x80;
  break;
 case 128:
 default:
  fec_set = 0x0;
 }

 reg = m88rs2000_readreg(state, 0x70);
 reg &= 0x7;
 ret = m88rs2000_writereg(state, 0x70, reg | fec_set);

 ret |= m88rs2000_writereg(state, 0x76, 0x8);

 return ret;
}
