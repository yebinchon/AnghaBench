
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stv0299_state {int mcr_reg; TYPE_1__* config; } ;
struct dvb_frontend {struct stv0299_state* demodulator_priv; } ;
struct TYPE_2__ {int* inittab; scalar_t__ op0_off; } ;


 int dprintk (char*) ;
 int msleep (int) ;
 int stv0299_writeregI (struct stv0299_state*,int,int) ;

__attribute__((used)) static int stv0299_init (struct dvb_frontend* fe)
{
 struct stv0299_state* state = fe->demodulator_priv;
 int i;
 u8 reg;
 u8 val;

 dprintk("stv0299: init chip\n");

 stv0299_writeregI(state, 0x02, 0x30 | state->mcr_reg);
 msleep(50);

 for (i = 0; ; i += 2) {
  reg = state->config->inittab[i];
  val = state->config->inittab[i+1];
  if (reg == 0xff && val == 0xff)
   break;
  if (reg == 0x0c && state->config->op0_off)
   val &= ~0x10;
  if (reg == 0x2)
   state->mcr_reg = val & 0xf;
  stv0299_writeregI(state, reg, val);
 }

 return 0;
}
