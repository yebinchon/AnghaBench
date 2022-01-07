
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l64781_state {scalar_t__ first; } ;
struct dvb_frontend {struct l64781_state* demodulator_priv; } ;


 int l64781_writereg (struct l64781_state*,int,int) ;
 int msleep (int) ;
 int reset_and_configure (struct l64781_state*) ;

__attribute__((used)) static int l64781_init(struct dvb_frontend* fe)
{
 struct l64781_state* state = fe->demodulator_priv;

 reset_and_configure (state);


 l64781_writereg (state, 0x3e, 0xa5);


 l64781_writereg (state, 0x2a, 0x04);
 l64781_writereg (state, 0x2a, 0x00);



 l64781_writereg (state, 0x07, 0x8e);


 l64781_writereg (state, 0x0b, 0x81);


 l64781_writereg (state, 0x0c, 0x84);


 l64781_writereg (state, 0x0d, 0x8c);







 l64781_writereg (state, 0x1e, 0x09);


 if (state->first) {
  state->first = 0;
  msleep(200);
 }

 return 0;
}
