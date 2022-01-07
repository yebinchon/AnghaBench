
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int inst; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int MANUAL_FLOW_CONTROL_SEL ;
 int OTG_GLOBAL_CONTROL2 ;
 int OTG_TRIGA_CLEAR ;
 int OTG_TRIGA_CNTL ;
 int OTG_TRIGA_DELAY ;
 int OTG_TRIGA_FALLING_EDGE_DETECT_CNTL ;
 int OTG_TRIGA_FREQUENCY_SELECT ;
 int OTG_TRIGA_POLARITY_SELECT ;
 int OTG_TRIGA_RISING_EDGE_DETECT_CNTL ;
 int OTG_TRIGA_SOURCE_PIPE_SELECT ;
 int OTG_TRIGA_SOURCE_SELECT ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_8 (int ,int ,int ,int,int ,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;

void optc1_setup_manual_trigger(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_SET(OTG_GLOBAL_CONTROL2, 0,
   MANUAL_FLOW_CONTROL_SEL, optc->inst);

 REG_SET_8(OTG_TRIGA_CNTL, 0,
   OTG_TRIGA_SOURCE_SELECT, 22,
   OTG_TRIGA_SOURCE_PIPE_SELECT, optc->inst,
   OTG_TRIGA_RISING_EDGE_DETECT_CNTL, 1,
   OTG_TRIGA_FALLING_EDGE_DETECT_CNTL, 0,
   OTG_TRIGA_POLARITY_SELECT, 0,
   OTG_TRIGA_FREQUENCY_SELECT, 0,
   OTG_TRIGA_DELAY, 0,
   OTG_TRIGA_CLEAR, 1);
}
