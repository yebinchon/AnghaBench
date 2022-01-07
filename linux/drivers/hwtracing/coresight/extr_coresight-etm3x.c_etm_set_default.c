
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_config {int enable_ctrl2; int* cntr_rld_val; int* cntr_val; int seq_curr_state; int ctxid_idx; int* ctxid_pid; int ctxid_mask; int sync_freq; void** cntr_rld_event; void** cntr_event; void* timestamp_event; void* seq_13_event; void* seq_32_event; void* seq_31_event; void* seq_23_event; void* seq_21_event; void* seq_12_event; void* enable_event; void* trigger_event; int enable_ctrl1; } ;


 int BIT (int) ;
 void* ETM_DEFAULT_EVENT_VAL ;
 void* ETM_HARD_WIRE_RES_A ;
 int ETM_MAX_CNTR ;
 int ETM_MAX_CTXID_CMP ;
 scalar_t__ WARN_ON_ONCE (int) ;

void etm_set_default(struct etm_config *config)
{
 int i;

 if (WARN_ON_ONCE(!config))
  return;
 config->enable_ctrl1 = BIT(24);
 config->enable_ctrl2 = 0x0;
 config->enable_event = ETM_HARD_WIRE_RES_A;

 config->trigger_event = ETM_DEFAULT_EVENT_VAL;
 config->enable_event = ETM_HARD_WIRE_RES_A;

 config->seq_12_event = ETM_DEFAULT_EVENT_VAL;
 config->seq_21_event = ETM_DEFAULT_EVENT_VAL;
 config->seq_23_event = ETM_DEFAULT_EVENT_VAL;
 config->seq_31_event = ETM_DEFAULT_EVENT_VAL;
 config->seq_32_event = ETM_DEFAULT_EVENT_VAL;
 config->seq_13_event = ETM_DEFAULT_EVENT_VAL;
 config->timestamp_event = ETM_DEFAULT_EVENT_VAL;

 for (i = 0; i < ETM_MAX_CNTR; i++) {
  config->cntr_rld_val[i] = 0x0;
  config->cntr_event[i] = ETM_DEFAULT_EVENT_VAL;
  config->cntr_rld_event[i] = ETM_DEFAULT_EVENT_VAL;
  config->cntr_val[i] = 0x0;
 }

 config->seq_curr_state = 0x0;
 config->ctxid_idx = 0x0;
 for (i = 0; i < ETM_MAX_CTXID_CMP; i++)
  config->ctxid_pid[i] = 0x0;

 config->ctxid_mask = 0x0;

 config->sync_freq = 0x400;
}
