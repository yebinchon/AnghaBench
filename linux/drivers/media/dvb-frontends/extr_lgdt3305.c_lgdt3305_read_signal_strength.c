
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct lgdt3305_state {int snr; } ;
struct TYPE_2__ {int (* read_snr ) (struct dvb_frontend*,int*) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct lgdt3305_state* demodulator_priv; } ;


 scalar_t__ lg_fail (int) ;
 int stub1 (struct dvb_frontend*,int*) ;

__attribute__((used)) static int lgdt3305_read_signal_strength(struct dvb_frontend *fe,
      u16 *strength)
{







 struct lgdt3305_state *state = fe->demodulator_priv;
 u16 snr;
 int ret;

 *strength = 0;

 ret = fe->ops.read_snr(fe, &snr);
 if (lg_fail(ret))
  goto fail;


 if (state->snr >= 8960 * 0x10000)
  *strength = 0xffff;
 else
  *strength = state->snr / 8960;
fail:
 return ret;
}
