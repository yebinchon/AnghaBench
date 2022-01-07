
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv {int dummy; } ;
struct dvb_frontend {struct stv* demodulator_priv; } ;


 int stop (struct stv*) ;

__attribute__((used)) static int sleep(struct dvb_frontend *fe)
{
 struct stv *state = fe->demodulator_priv;

 stop(state);
 return 0;
}
