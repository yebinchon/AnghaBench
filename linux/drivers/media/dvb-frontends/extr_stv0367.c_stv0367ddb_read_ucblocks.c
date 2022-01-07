
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stv0367_state {int activedemod; } ;
struct TYPE_4__ {TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_2__ block_error; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct stv0367_state* demodulator_priv; } ;
struct TYPE_3__ {int uvalue; int scale; } ;


 int FE_SCALE_COUNTER ;
 int FE_SCALE_NOT_AVAILABLE ;


 int stv0367cab_read_ucblcks (struct dvb_frontend*,int *) ;
 int stv0367ter_read_ucblocks (struct dvb_frontend*,int *) ;

__attribute__((used)) static void stv0367ddb_read_ucblocks(struct dvb_frontend *fe)
{
 struct stv0367_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 u32 ucblocks = 0;

 switch (state->activedemod) {
 case 128:
  stv0367ter_read_ucblocks(fe, &ucblocks);
  break;
 case 129:
  stv0367cab_read_ucblcks(fe, &ucblocks);
  break;
 default:
  p->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
  return;
 }

 p->block_error.stat[0].scale = FE_SCALE_COUNTER;
 p->block_error.stat[0].uvalue = ucblocks;
}
