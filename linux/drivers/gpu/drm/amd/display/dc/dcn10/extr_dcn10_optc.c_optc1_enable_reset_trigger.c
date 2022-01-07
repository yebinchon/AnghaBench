
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_FORCE_COUNT_NOW_CNTL ;
 int OTG_FORCE_COUNT_NOW_MODE ;
 int OTG_TRIGA_CNTL ;
 int OTG_TRIGA_FALLING_EDGE_DETECT_CNTL ;
 int OTG_TRIGA_RISING_EDGE_DETECT_CNTL ;
 int OTG_TRIGA_SOURCE_PIPE_SELECT ;
 int OTG_TRIGA_SOURCE_SELECT ;
 int OTG_V_SYNC_A_CNTL ;
 int OTG_V_SYNC_A_POL ;
 int REG_GET (int ,int ,scalar_t__*) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int) ;

void optc1_enable_reset_trigger(struct timing_generator *optc, int source_tg_inst)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t falling_edge;

 REG_GET(OTG_V_SYNC_A_CNTL,
   OTG_V_SYNC_A_POL, &falling_edge);

 if (falling_edge)
  REG_SET_3(OTG_TRIGA_CNTL, 0,



    OTG_TRIGA_SOURCE_SELECT, 20,
    OTG_TRIGA_SOURCE_PIPE_SELECT, source_tg_inst,

    OTG_TRIGA_FALLING_EDGE_DETECT_CNTL, 1);
 else
  REG_SET_3(OTG_TRIGA_CNTL, 0,



    OTG_TRIGA_SOURCE_SELECT, 20,
    OTG_TRIGA_SOURCE_PIPE_SELECT, source_tg_inst,

    OTG_TRIGA_RISING_EDGE_DETECT_CNTL, 1);

 REG_SET(OTG_FORCE_COUNT_NOW_CNTL, 0,



   OTG_FORCE_COUNT_NOW_MODE, 2);
}
