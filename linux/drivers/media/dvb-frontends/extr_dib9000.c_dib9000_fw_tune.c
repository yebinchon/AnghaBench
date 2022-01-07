
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct dib9000_state {int tune_state; int status; int * i2c_read_buffer; TYPE_1__ channel_status; } ;
typedef int s8 ;


 scalar_t__ CHANNEL_STATUS_PARAMETERS_UNKNOWN ;


 void* CT_DEMOD_STOP ;
 int FE_CALLBACK_TIME_NEVER ;
 int FE_MM_R_CHANNEL_SEARCH_STATE ;
 int FE_MM_R_CHANNEL_TUNE_STATE ;
 int FE_MM_W_CHANNEL_CONTEXT ;
 int FE_MM_W_FE_INFO ;
 int FE_STATUS_DEMOD_SUCCESS ;
 int FE_STATUS_LOCKED ;
 int FE_STATUS_TUNE_FAILED ;
 int OUT_MSG_FE_CHANNEL_SEARCH ;
 int OUT_MSG_FE_CHANNEL_TUNE ;
 int dib9000_fw_set_channel_head (struct dib9000_state*) ;
 int dib9000_fw_set_channel_union (struct dvb_frontend*) ;
 int dib9000_mbx_send (struct dib9000_state*,int ,int *,int ) ;
 int dib9000_risc_mem_read (struct dib9000_state*,int ,int *,int) ;
 int dib9000_risc_mem_write (struct dib9000_state*,int ,int *) ;
 scalar_t__ fe_info ;

__attribute__((used)) static int dib9000_fw_tune(struct dvb_frontend *fe)
{
 struct dib9000_state *state = fe->demodulator_priv;
 int ret = 10, search = state->channel_status.status == CHANNEL_STATUS_PARAMETERS_UNKNOWN;
 s8 i;

 switch (state->tune_state) {
 case 129:
  dib9000_fw_set_channel_head(state);


  dib9000_risc_mem_write(state, FE_MM_W_CHANNEL_CONTEXT, (u8 *) fe_info);
  dib9000_risc_mem_write(state, FE_MM_W_FE_INFO, (u8 *) fe_info);

  if (search)
   dib9000_mbx_send(state, OUT_MSG_FE_CHANNEL_SEARCH, ((void*)0), 0);
  else {
   dib9000_fw_set_channel_union(fe);
   dib9000_mbx_send(state, OUT_MSG_FE_CHANNEL_TUNE, ((void*)0), 0);
  }
  state->tune_state = 128;
  break;
 case 128:
  if (search)
   dib9000_risc_mem_read(state, FE_MM_R_CHANNEL_SEARCH_STATE, state->i2c_read_buffer, 1);
  else
   dib9000_risc_mem_read(state, FE_MM_R_CHANNEL_TUNE_STATE, state->i2c_read_buffer, 1);
  i = (s8)state->i2c_read_buffer[0];
  switch (i) {
  case 0:
   break;
  case -2:
   if (search)
    state->status = FE_STATUS_DEMOD_SUCCESS;
   else {
    state->tune_state = CT_DEMOD_STOP;
    state->status = FE_STATUS_LOCKED;
   }
   break;
  default:
   state->status = FE_STATUS_TUNE_FAILED;
   state->tune_state = CT_DEMOD_STOP;
   break;
  }
  break;
 default:
  ret = FE_CALLBACK_TIME_NEVER;
  break;
 }

 return ret;
}
