
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int dummy; } ;


 int OUT_MSG_ENABLE_DIVERSITY ;
 int dib9000_mbx_send (struct dib9000_state*,int ,int *,int) ;

__attribute__((used)) static int dib9000_fw_set_diversity_in(struct dvb_frontend *fe, int onoff)
{
 struct dib9000_state *state = fe->demodulator_priv;
 u16 mode = (u16) onoff;
 return dib9000_mbx_send(state, OUT_MSG_ENABLE_DIVERSITY, &mode, 1);
}
