
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0367_state {int dummy; } ;


 int R367TER_PLLMDIV ;
 int R367TER_PLLNDIV ;
 int R367TER_PLLSETUP ;


 int dprintk (char*) ;
 int stv0367_writereg (struct stv0367_state*,int ,int) ;

__attribute__((used)) static void stv0367_pll_setup(struct stv0367_state *state,
    u32 icspeed, u32 xtal)
{




 switch (icspeed) {
 case 128:
  switch (xtal) {
  default:
  case 27000000:
   dprintk("STV0367 SetCLKgen for 58MHz IC and 27Mhz crystal\n");

   stv0367_writereg(state, R367TER_PLLMDIV, 0x1b);
   stv0367_writereg(state, R367TER_PLLNDIV, 0xe8);
   break;
  }
  break;
 default:
 case 129:
  switch (xtal) {

  case 16000000:
   stv0367_writereg(state, R367TER_PLLMDIV, 0x2);
   stv0367_writereg(state, R367TER_PLLNDIV, 0x1b);
   break;
  case 25000000:
   stv0367_writereg(state, R367TER_PLLMDIV, 0xa);
   stv0367_writereg(state, R367TER_PLLNDIV, 0x55);
   break;
  default:
  case 27000000:
   dprintk("FE_STV0367TER_SetCLKgen for 27Mhz\n");
   stv0367_writereg(state, R367TER_PLLMDIV, 0x1);
   stv0367_writereg(state, R367TER_PLLNDIV, 0x8);
   break;
  case 30000000:
   stv0367_writereg(state, R367TER_PLLMDIV, 0xc);
   stv0367_writereg(state, R367TER_PLLNDIV, 0x55);
   break;
  }
 }

 stv0367_writereg(state, R367TER_PLLSETUP, 0x18);
}
