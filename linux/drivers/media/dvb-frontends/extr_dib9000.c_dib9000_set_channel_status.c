
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_parametersContext {int dummy; } ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int channel_status; } ;


 int memcpy (int *,struct dvb_frontend_parametersContext*,int) ;

__attribute__((used)) static int dib9000_set_channel_status(struct dvb_frontend *fe, struct dvb_frontend_parametersContext *channel_status)
{
 struct dib9000_state *state = fe->demodulator_priv;

 memcpy(&state->channel_status, channel_status, sizeof(struct dvb_frontend_parametersContext));
 return 0;
}
