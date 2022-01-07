
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct drxd_state* demodulator_priv; } ;
struct drxd_state {int dummy; } ;


 int ConfigureMPEGOutput (struct drxd_state*,int ) ;

__attribute__((used)) static int drxd_sleep(struct dvb_frontend *fe)
{
 struct drxd_state *state = fe->demodulator_priv;

 ConfigureMPEGOutput(state, 0);
 return 0;
}
