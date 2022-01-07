
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct as102_state* demodulator_priv; } ;
struct dtv_frontend_properties {int transmission_mode; int guard_interval; void* code_rate_LP; void* code_rate_HP; int hierarchy; int modulation; } ;
struct as10x_tps {int modulation; int hierarchy; int code_rate_HP; int code_rate_LP; int guard_interval; int transmission_mode; int member_0; } ;
struct as102_state {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_tps ) (int ,struct as10x_tps*) ;} ;
 void* FEC_1_2 ;
 void* FEC_2_3 ;
 void* FEC_3_4 ;
 void* FEC_5_6 ;
 void* FEC_7_8 ;
 int GUARD_INTERVAL_1_16 ;
 int GUARD_INTERVAL_1_32 ;
 int GUARD_INTERVAL_1_4 ;
 int GUARD_INTERVAL_1_8 ;




 int HIERARCHY_1 ;
 int HIERARCHY_2 ;
 int HIERARCHY_4 ;
 int HIERARCHY_NONE ;




 int QAM_16 ;
 int QAM_64 ;
 int QPSK ;
 int TRANSMISSION_MODE_2K ;
 int TRANSMISSION_MODE_8K ;


 int stub1 (int ,struct as10x_tps*) ;

__attribute__((used)) static int as102_fe_get_frontend(struct dvb_frontend *fe,
     struct dtv_frontend_properties *c)
{
 struct as102_state *state = fe->demodulator_priv;
 int ret = 0;
 struct as10x_tps tps = { 0 };


 ret = state->ops->get_tps(state->priv, &tps);
 if (ret < 0)
  return ret;


 switch (tps.modulation) {
 case 138:
  c->modulation = QPSK;
  break;
 case 140:
  c->modulation = QAM_16;
  break;
 case 139:
  c->modulation = QAM_64;
  break;
 }


 switch (tps.hierarchy) {
 case 130:
  c->hierarchy = HIERARCHY_NONE;
  break;
 case 133:
  c->hierarchy = HIERARCHY_1;
  break;
 case 132:
  c->hierarchy = HIERARCHY_2;
  break;
 case 131:
  c->hierarchy = HIERARCHY_4;
  break;
 }


 switch (tps.code_rate_HP) {
 case 145:
  c->code_rate_HP = FEC_1_2;
  break;
 case 144:
  c->code_rate_HP = FEC_2_3;
  break;
 case 143:
  c->code_rate_HP = FEC_3_4;
  break;
 case 142:
  c->code_rate_HP = FEC_5_6;
  break;
 case 141:
  c->code_rate_HP = FEC_7_8;
  break;
 }


 switch (tps.code_rate_LP) {
 case 145:
  c->code_rate_LP = FEC_1_2;
  break;
 case 144:
  c->code_rate_LP = FEC_2_3;
  break;
 case 143:
  c->code_rate_LP = FEC_3_4;
  break;
 case 142:
  c->code_rate_LP = FEC_5_6;
  break;
 case 141:
  c->code_rate_LP = FEC_7_8;
  break;
 }


 switch (tps.guard_interval) {
 case 136:
  c->guard_interval = GUARD_INTERVAL_1_32;
  break;
 case 137:
  c->guard_interval = GUARD_INTERVAL_1_16;
  break;
 case 134:
  c->guard_interval = GUARD_INTERVAL_1_8;
  break;
 case 135:
  c->guard_interval = GUARD_INTERVAL_1_4;
  break;
 }


 switch (tps.transmission_mode) {
 case 129:
  c->transmission_mode = TRANSMISSION_MODE_2K;
  break;
 case 128:
  c->transmission_mode = TRANSMISSION_MODE_8K;
  break;
 }

 return 0;
}
