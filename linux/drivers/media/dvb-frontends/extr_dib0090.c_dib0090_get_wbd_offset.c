
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int wbd_offset; } ;



u16 dib0090_get_wbd_offset(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;
 return state->wbd_offset;
}
