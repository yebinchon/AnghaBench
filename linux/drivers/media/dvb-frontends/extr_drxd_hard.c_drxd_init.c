
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct drxd_state* demodulator_priv; } ;
struct drxd_state {int dummy; } ;


 int DRXD_init (struct drxd_state*,int *,int ) ;

__attribute__((used)) static int drxd_init(struct dvb_frontend *fe)
{
 struct drxd_state *state = fe->demodulator_priv;

 return DRXD_init(state, ((void*)0), 0);
}
