
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dtv_frontend_properties {int frequency; int bandwidth_hz; int guard_interval; int modulation; int transmission_mode; int hierarchy; scalar_t__ code_rate_LP; scalar_t__ code_rate_HP; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct as102_state* demodulator_priv; } ;
struct as10x_tune_args {int freq; scalar_t__ hier_select; void* code_rate; int hierarchy; int guard_interval; void* bandwidth; int transmission_mode; int modulation; int interleaving_mode; int member_0; } ;
struct as102_state {int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_tune ) (int ,struct as10x_tune_args*) ;} ;


 void* BW_6_MHZ ;
 void* BW_7_MHZ ;
 void* BW_8_MHZ ;
 int CONST_QAM16 ;
 int CONST_QAM64 ;
 int CONST_QPSK ;
 int CONST_UNKNOWN ;
 scalar_t__ FEC_NONE ;





 int GUARD_INT_1_16 ;
 int GUARD_INT_1_32 ;
 int GUARD_INT_1_4 ;
 int GUARD_INT_1_8 ;
 int GUARD_UNKNOWN ;





 int HIER_ALPHA_1 ;
 int HIER_ALPHA_2 ;
 int HIER_ALPHA_4 ;
 scalar_t__ HIER_HIGH_PRIORITY ;
 scalar_t__ HIER_LOW_PRIORITY ;
 int HIER_NONE ;
 int HIER_UNKNOWN ;
 int INTLV_NATIVE ;





 int TRANS_MODE_2K ;
 int TRANS_MODE_8K ;
 int TRANS_MODE_UNKNOWN ;
 void* as102_fe_get_code_rate (scalar_t__) ;
 int pr_debug (char*,int,char*,char*,...) ;
 int stub1 (int ,struct as10x_tune_args*) ;

__attribute__((used)) static int as102_fe_set_frontend(struct dvb_frontend *fe)
{
 struct as102_state *state = fe->demodulator_priv;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct as10x_tune_args tune_args = { 0 };


 tune_args.freq = c->frequency / 1000;


 tune_args.interleaving_mode = INTLV_NATIVE;

 switch (c->bandwidth_hz) {
 case 8000000:
  tune_args.bandwidth = BW_8_MHZ;
  break;
 case 7000000:
  tune_args.bandwidth = BW_7_MHZ;
  break;
 case 6000000:
  tune_args.bandwidth = BW_6_MHZ;
  break;
 default:
  tune_args.bandwidth = BW_8_MHZ;
 }

 switch (c->guard_interval) {
 case 141:
  tune_args.guard_interval = GUARD_INT_1_32;
  break;
 case 142:
  tune_args.guard_interval = GUARD_INT_1_16;
  break;
 case 139:
  tune_args.guard_interval = GUARD_INT_1_8;
  break;
 case 140:
  tune_args.guard_interval = GUARD_INT_1_4;
  break;
 case 138:
 default:
  tune_args.guard_interval = GUARD_UNKNOWN;
  break;
 }

 switch (c->modulation) {
 case 130:
  tune_args.modulation = CONST_QPSK;
  break;
 case 132:
  tune_args.modulation = CONST_QAM16;
  break;
 case 131:
  tune_args.modulation = CONST_QAM64;
  break;
 default:
  tune_args.modulation = CONST_UNKNOWN;
  break;
 }

 switch (c->transmission_mode) {
 case 129:
  tune_args.transmission_mode = TRANS_MODE_2K;
  break;
 case 128:
  tune_args.transmission_mode = TRANS_MODE_8K;
  break;
 default:
  tune_args.transmission_mode = TRANS_MODE_UNKNOWN;
 }

 switch (c->hierarchy) {
 case 133:
  tune_args.hierarchy = HIER_NONE;
  break;
 case 137:
  tune_args.hierarchy = HIER_ALPHA_1;
  break;
 case 136:
  tune_args.hierarchy = HIER_ALPHA_2;
  break;
 case 135:
  tune_args.hierarchy = HIER_ALPHA_4;
  break;
 case 134:
  tune_args.hierarchy = HIER_UNKNOWN;
  break;
 }

 pr_debug("as102: tuner parameters: freq: %d  bw: 0x%02x  gi: 0x%02x\n",
   c->frequency,
   tune_args.bandwidth,
   tune_args.guard_interval);





 if ((tune_args.hierarchy != HIER_NONE) &&
         ((c->code_rate_LP == FEC_NONE) ||
   (c->code_rate_HP == FEC_NONE))) {

  if (c->code_rate_LP == FEC_NONE) {
   tune_args.hier_select = HIER_HIGH_PRIORITY;
   tune_args.code_rate =
      as102_fe_get_code_rate(c->code_rate_HP);
  }

  if (c->code_rate_HP == FEC_NONE) {
   tune_args.hier_select = HIER_LOW_PRIORITY;
   tune_args.code_rate =
      as102_fe_get_code_rate(c->code_rate_LP);
  }

  pr_debug("as102: \thierarchy: 0x%02x  selected: %s  code_rate_%s: 0x%02x\n",
   tune_args.hierarchy,
   tune_args.hier_select == HIER_HIGH_PRIORITY ?
   "HP" : "LP",
   tune_args.hier_select == HIER_HIGH_PRIORITY ?
   "HP" : "LP",
   tune_args.code_rate);
 } else {
  tune_args.code_rate =
   as102_fe_get_code_rate(c->code_rate_HP);
 }


 return state->ops->set_tune(state->priv, &tune_args);
}
