
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mb86a16_state {int dummy; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;


 int EREMOTEIO ;
 int MB86A16_AGCM ;
 int MB86A16_DEBUG ;
 int MB86A16_ERROR ;
 int dprintk (int ,int ,int,char*,...) ;
 int mb86a16_read (struct mb86a16_state*,int ,int*) ;
 int verbose ;

__attribute__((used)) static int mb86a16_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 u8 agcm = 0;
 struct mb86a16_state *state = fe->demodulator_priv;

 *strength = 0;
 if (mb86a16_read(state, MB86A16_AGCM, &agcm) != 2) {
  dprintk(verbose, MB86A16_ERROR, 1, "I2C transfer error");
  return -EREMOTEIO;
 }

 *strength = ((0xff - agcm) * 100) / 256;
 dprintk(verbose, MB86A16_DEBUG, 1, "Signal strength=[%d %%]", (u8) *strength);
 *strength = (0xffff - 0xff) + agcm;

 return 0;
}
