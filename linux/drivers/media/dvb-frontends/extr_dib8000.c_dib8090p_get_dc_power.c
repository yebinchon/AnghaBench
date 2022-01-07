
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;

__attribute__((used)) static int dib8090p_get_dc_power(struct dvb_frontend *fe, u8 IQ)
{
 struct dib8000_state *state = fe->demodulator_priv;
 int val = 0;

 switch (IQ) {
 case 1:
   val = dib8000_read_word(state, 403);
   break;
 case 0:
   val = dib8000_read_word(state, 404);
   break;
 }
 if (val & 0x200)
  val -= 1024;

 return val;
}
