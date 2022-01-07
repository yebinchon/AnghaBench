
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optc {int dummy; } ;
struct dcn_otg_state {int underflow_occurred_status; int h_total; int h_sync_a_pol; int h_sync_a_end; int h_sync_a_start; int h_blank_end; int h_blank_start; int v_sync_a_end; int v_sync_a_start; int v_total_min_sel; int v_total_max_sel; int v_total_min; int v_total_max; int v_total; int v_sync_a_pol; int v_blank_end; int v_blank_start; int otg_enabled; } ;


 int OPTC_INPUT_GLOBAL_CONTROL ;
 int OPTC_UNDERFLOW_OCCURRED_STATUS ;
 int OTG_CONTROL ;
 int OTG_H_BLANK_END ;
 int OTG_H_BLANK_START ;
 int OTG_H_BLANK_START_END ;
 int OTG_H_SYNC_A ;
 int OTG_H_SYNC_A_CNTL ;
 int OTG_H_SYNC_A_END ;
 int OTG_H_SYNC_A_POL ;
 int OTG_H_SYNC_A_START ;
 int OTG_H_TOTAL ;
 int OTG_MASTER_EN ;
 int OTG_V_BLANK_END ;
 int OTG_V_BLANK_START ;
 int OTG_V_BLANK_START_END ;
 int OTG_V_SYNC_A ;
 int OTG_V_SYNC_A_CNTL ;
 int OTG_V_SYNC_A_END ;
 int OTG_V_SYNC_A_POL ;
 int OTG_V_SYNC_A_START ;
 int OTG_V_TOTAL ;
 int OTG_V_TOTAL_CONTROL ;
 int OTG_V_TOTAL_MAX ;
 int OTG_V_TOTAL_MAX_SEL ;
 int OTG_V_TOTAL_MIN ;
 int OTG_V_TOTAL_MIN_SEL ;
 int REG_GET (int ,int ,int *) ;
 int REG_GET_2 (int ,int ,int *,int ,int *) ;

void optc1_read_otg_state(struct optc *optc1,
  struct dcn_otg_state *s)
{
 REG_GET(OTG_CONTROL,
   OTG_MASTER_EN, &s->otg_enabled);

 REG_GET_2(OTG_V_BLANK_START_END,
   OTG_V_BLANK_START, &s->v_blank_start,
   OTG_V_BLANK_END, &s->v_blank_end);

 REG_GET(OTG_V_SYNC_A_CNTL,
   OTG_V_SYNC_A_POL, &s->v_sync_a_pol);

 REG_GET(OTG_V_TOTAL,
   OTG_V_TOTAL, &s->v_total);

 REG_GET(OTG_V_TOTAL_MAX,
   OTG_V_TOTAL_MAX, &s->v_total_max);

 REG_GET(OTG_V_TOTAL_MIN,
   OTG_V_TOTAL_MIN, &s->v_total_min);

 REG_GET(OTG_V_TOTAL_CONTROL,
   OTG_V_TOTAL_MAX_SEL, &s->v_total_max_sel);

 REG_GET(OTG_V_TOTAL_CONTROL,
   OTG_V_TOTAL_MIN_SEL, &s->v_total_min_sel);

 REG_GET_2(OTG_V_SYNC_A,
   OTG_V_SYNC_A_START, &s->v_sync_a_start,
   OTG_V_SYNC_A_END, &s->v_sync_a_end);

 REG_GET_2(OTG_H_BLANK_START_END,
   OTG_H_BLANK_START, &s->h_blank_start,
   OTG_H_BLANK_END, &s->h_blank_end);

 REG_GET_2(OTG_H_SYNC_A,
   OTG_H_SYNC_A_START, &s->h_sync_a_start,
   OTG_H_SYNC_A_END, &s->h_sync_a_end);

 REG_GET(OTG_H_SYNC_A_CNTL,
   OTG_H_SYNC_A_POL, &s->h_sync_a_pol);

 REG_GET(OTG_H_TOTAL,
   OTG_H_TOTAL, &s->h_total);

 REG_GET(OPTC_INPUT_GLOBAL_CONTROL,
   OPTC_UNDERFLOW_OCCURRED_STATUS, &s->underflow_occurred_status);
}
