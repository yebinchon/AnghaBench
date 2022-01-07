
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {struct dib3000mc_config* cfg; } ;
struct dib3000mc_config {int dummy; } ;



void dib3000mc_set_config(struct dvb_frontend *fe, struct dib3000mc_config *cfg)
{
 struct dib3000mc_state *state = fe->demodulator_priv;
 state->cfg = cfg;
}
