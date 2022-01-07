
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int dummy; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;


 int lgdt3306a_sleep (struct lgdt3306a_state*) ;

__attribute__((used)) static int lgdt3306a_fe_sleep(struct dvb_frontend *fe)
{
 struct lgdt3306a_state *state = fe->demodulator_priv;

 return lgdt3306a_sleep(state);
}
