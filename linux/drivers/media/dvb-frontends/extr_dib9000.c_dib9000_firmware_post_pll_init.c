
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int dummy; } ;


 int dib9000_fw_init (struct dib9000_state*) ;

int dib9000_firmware_post_pll_init(struct dvb_frontend *fe)
{
 struct dib9000_state *state = fe->demodulator_priv;
 return dib9000_fw_init(state);
}
