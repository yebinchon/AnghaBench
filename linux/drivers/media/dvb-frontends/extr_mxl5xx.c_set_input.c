
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl {int tuner; } ;
struct dvb_frontend {struct mxl* demodulator_priv; } ;



__attribute__((used)) static int set_input(struct dvb_frontend *fe, int input)
{
 struct mxl *state = fe->demodulator_priv;

 state->tuner = input;
 return 0;
}
