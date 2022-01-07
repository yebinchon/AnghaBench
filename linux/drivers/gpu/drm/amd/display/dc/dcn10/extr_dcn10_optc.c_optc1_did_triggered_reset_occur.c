
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_FORCE_COUNT_NOW_CNTL ;
 int OTG_FORCE_COUNT_NOW_OCCURRED ;
 int OTG_FORCE_VSYNC_NEXT_LINE_OCCURRED ;
 int OTG_VERT_SYNC_CONTROL ;
 int REG_GET (int ,int ,scalar_t__*) ;

bool optc1_did_triggered_reset_occur(
 struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t occurred_force, occurred_vsync;

 REG_GET(OTG_FORCE_COUNT_NOW_CNTL,
  OTG_FORCE_COUNT_NOW_OCCURRED, &occurred_force);

 REG_GET(OTG_VERT_SYNC_CONTROL,
  OTG_FORCE_VSYNC_NEXT_LINE_OCCURRED, &occurred_vsync);

 return occurred_vsync != 0 || occurred_force != 0;
}
