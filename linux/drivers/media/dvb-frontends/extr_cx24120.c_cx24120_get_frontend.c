
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dvb_frontend {struct cx24120_state* demodulator_priv; } ;
struct dtv_frontend_properties {int frequency; } ;
struct cx24120_state {TYPE_1__* i2c; } ;
struct TYPE_2__ {int dev; } ;


 int CX24120_HAS_LOCK ;
 int CX24120_REG_FREQ1 ;
 int CX24120_REG_FREQ2 ;
 int CX24120_REG_FREQ3 ;
 int CX24120_REG_STATUS ;
 int cx24120_get_fec (struct dvb_frontend*) ;
 int cx24120_readreg (struct cx24120_state*,int ) ;
 int dev_dbg (int *,char*,...) ;

__attribute__((used)) static int cx24120_get_frontend(struct dvb_frontend *fe,
    struct dtv_frontend_properties *c)
{
 struct cx24120_state *state = fe->demodulator_priv;
 u8 freq1, freq2, freq3;
 int status;

 dev_dbg(&state->i2c->dev, "\n");


 status = cx24120_readreg(state, CX24120_REG_STATUS);
 if (!(status & CX24120_HAS_LOCK))
  return 0;


 freq1 = cx24120_readreg(state, CX24120_REG_FREQ1);
 freq2 = cx24120_readreg(state, CX24120_REG_FREQ2);
 freq3 = cx24120_readreg(state, CX24120_REG_FREQ3);
 c->frequency = (freq3 << 16) | (freq2 << 8) | freq1;
 dev_dbg(&state->i2c->dev, "frequency = %d\n", c->frequency);


 cx24120_get_fec(fe);

 return 0;
}
