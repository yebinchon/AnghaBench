
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ block_error; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct cx24120_state* demodulator_priv; } ;
struct cx24120_state {scalar_t__ ucb_offset; } ;
struct TYPE_3__ {scalar_t__ scale; scalar_t__ uvalue; } ;


 scalar_t__ FE_SCALE_COUNTER ;

__attribute__((used)) static int cx24120_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct cx24120_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;

 if (c->block_error.stat[0].scale != FE_SCALE_COUNTER) {
  *ucblocks = 0;
  return 0;
 }

 *ucblocks = c->block_error.stat[0].uvalue - state->ucb_offset;

 return 0;
}
