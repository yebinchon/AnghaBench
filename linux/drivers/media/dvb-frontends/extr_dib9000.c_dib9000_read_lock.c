
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int dummy; } ;


 int dib9000_read_word (struct dib9000_state*,int) ;

__attribute__((used)) static u16 dib9000_read_lock(struct dvb_frontend *fe)
{
 struct dib9000_state *state = fe->demodulator_priv;

 return dib9000_read_word(state, 535);
}
