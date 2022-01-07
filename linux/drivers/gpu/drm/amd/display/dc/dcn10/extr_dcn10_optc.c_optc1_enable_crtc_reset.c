
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct crtc_trigger_info {int event; int delay; } ;




 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_AUTO_FORCE_VSYNC_MODE ;
 int OTG_FORCE_COUNT_NOW_CNTL ;
 int OTG_FORCE_COUNT_NOW_MODE ;
 int OTG_TRIGA_CNTL ;
 int OTG_TRIGA_FALLING_EDGE_DETECT_CNTL ;
 int OTG_TRIGA_RISING_EDGE_DETECT_CNTL ;
 int OTG_TRIGA_SOURCE_PIPE_SELECT ;
 int OTG_TRIGA_SOURCE_SELECT ;
 int OTG_VERT_SYNC_CONTROL ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_4 (int ,int ,int ,int,int ,int,int ,int,int ,int) ;



void optc1_enable_crtc_reset(
  struct timing_generator *optc,
  int source_tg_inst,
  struct crtc_trigger_info *crtc_tp)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t falling_edge = 0;
 uint32_t rising_edge = 0;

 switch (crtc_tp->event) {

 case 130:
  rising_edge = 1;
  break;

 case 131:
  falling_edge = 1;
  break;
 }

 REG_SET_4(OTG_TRIGA_CNTL, 0,



    OTG_TRIGA_SOURCE_SELECT, 20,
    OTG_TRIGA_SOURCE_PIPE_SELECT, source_tg_inst,

    OTG_TRIGA_RISING_EDGE_DETECT_CNTL, rising_edge,
    OTG_TRIGA_FALLING_EDGE_DETECT_CNTL, falling_edge);

 switch (crtc_tp->delay) {
 case 129:
  REG_SET(OTG_VERT_SYNC_CONTROL, 0,
    OTG_AUTO_FORCE_VSYNC_MODE, 1);
  break;
 case 128:
  REG_SET(OTG_FORCE_COUNT_NOW_CNTL, 0,



   OTG_FORCE_COUNT_NOW_MODE, 2);
  break;
 }
}
