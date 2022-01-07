
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dvb_frontend {struct drxd_state* demodulator_priv; } ;
struct drxd_state {int dummy; } ;


 int ReadIFAgc (struct drxd_state*,int*) ;

__attribute__((used)) static int drxd_read_signal_strength(struct dvb_frontend *fe, u16 * strength)
{
 struct drxd_state *state = fe->demodulator_priv;
 u32 value;
 int res;

 res = ReadIFAgc(state, &value);
 if (res < 0)
  *strength = 0;
 else
  *strength = 0xffff - (value << 4);
 return 0;
}
