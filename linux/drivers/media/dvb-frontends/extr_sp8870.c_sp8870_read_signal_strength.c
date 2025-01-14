
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sp8870_state {int dummy; } ;
struct dvb_frontend {struct sp8870_state* demodulator_priv; } ;


 int EIO ;
 int sp8870_readreg (struct sp8870_state*,int) ;

__attribute__((used)) static int sp8870_read_signal_strength(struct dvb_frontend* fe, u16 * signal)
{
 struct sp8870_state* state = fe->demodulator_priv;
 int ret;
 u16 tmp;

 *signal = 0;

 ret = sp8870_readreg (state, 0x306);
 if (ret < 0)
  return -EIO;

 tmp = ret << 8;

 ret = sp8870_readreg (state, 0x303);
 if (ret < 0)
  return -EIO;

 tmp |= ret;

 if (tmp)
  *signal = 0xFFFF - tmp;

 return 0;
}
