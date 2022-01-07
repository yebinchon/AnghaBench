
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {TYPE_1__* config; } ;
struct TYPE_5__ {int reg; int data; } ;
struct TYPE_4__ {scalar_t__ dont_use_pll; scalar_t__ lnb_polarity; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int cx24123_readreg (struct cx24123_state*,int) ;
 TYPE_2__* cx24123_regdata ;
 int cx24123_repeater_mode (struct cx24123_state*,int,int ) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int cx24123_initfe(struct dvb_frontend *fe)
{
 struct cx24123_state *state = fe->demodulator_priv;
 int i;

 dprintk("init frontend\n");


 for (i = 0; i < ARRAY_SIZE(cx24123_regdata); i++)
  cx24123_writereg(state, cx24123_regdata[i].reg,
   cx24123_regdata[i].data);


 if (state->config->lnb_polarity)
  cx24123_writereg(state, 0x32,
   cx24123_readreg(state, 0x32) | 0x02);

 if (state->config->dont_use_pll)
  cx24123_repeater_mode(state, 1, 0);

 return 0;
}
