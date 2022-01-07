
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_state {int dummy; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;


 int STB0899_POSTPROC_GPIO_POWER ;
 int stb0899_postproc (struct stb0899_state*,int ,int ) ;

__attribute__((used)) static void stb0899_detach(struct dvb_frontend *fe)
{
 struct stb0899_state *state = fe->demodulator_priv;


 stb0899_postproc(state, STB0899_POSTPROC_GPIO_POWER, 0);
}
