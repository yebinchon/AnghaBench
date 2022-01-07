
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp8870_state {int dummy; } ;
struct dvb_frontend {struct sp8870_state* demodulator_priv; } ;


 int sp8870_writereg (struct sp8870_state*,int,int) ;

__attribute__((used)) static int sp8870_sleep(struct dvb_frontend* fe)
{
 struct sp8870_state* state = fe->demodulator_priv;


 return sp8870_writereg(state, 0xC18, 0x000);
}
