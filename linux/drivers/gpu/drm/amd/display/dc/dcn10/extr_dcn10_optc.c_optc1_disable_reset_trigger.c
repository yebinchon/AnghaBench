
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_FORCE_COUNT_NOW_CLEAR ;
 int OTG_FORCE_COUNT_NOW_CNTL ;
 int OTG_FORCE_VSYNC_NEXT_LINE_CLEAR ;
 int OTG_TRIGA_CNTL ;
 int OTG_VERT_SYNC_CONTROL ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_WRITE (int ,int ) ;

void optc1_disable_reset_trigger(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_WRITE(OTG_TRIGA_CNTL, 0);

 REG_SET(OTG_FORCE_COUNT_NOW_CNTL, 0,
  OTG_FORCE_COUNT_NOW_CLEAR, 1);

 REG_SET(OTG_VERT_SYNC_CONTROL, 0,
  OTG_FORCE_VSYNC_NEXT_LINE_CLEAR, 1);
}
