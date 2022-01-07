
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int dummy; } ;
struct dvb_frontend {struct lgdt3306a_state* demodulator_priv; } ;


 int dbg_info (char*) ;
 int kfree (struct lgdt3306a_state*) ;

__attribute__((used)) static void lgdt3306a_release(struct dvb_frontend *fe)
{
 struct lgdt3306a_state *state = fe->demodulator_priv;

 dbg_info("\n");
 kfree(state);
}
