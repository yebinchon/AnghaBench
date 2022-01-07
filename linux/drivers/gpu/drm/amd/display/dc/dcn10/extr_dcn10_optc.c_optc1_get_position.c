
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct crtc_position {int nominal_vcount; int vertical_count; int horizontal_count; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_HORZ_COUNT ;
 int OTG_NOM_VERT_POSITION ;
 int OTG_STATUS_POSITION ;
 int OTG_VERT_COUNT ;
 int OTG_VERT_COUNT_NOM ;
 int REG_GET (int ,int ,int *) ;
 int REG_GET_2 (int ,int ,int *,int ,int *) ;

void optc1_get_position(struct timing_generator *optc,
  struct crtc_position *position)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_GET_2(OTG_STATUS_POSITION,
   OTG_HORZ_COUNT, &position->horizontal_count,
   OTG_VERT_COUNT, &position->vertical_count);

 REG_GET(OTG_NOM_VERT_POSITION,
   OTG_VERT_COUNT_NOM, &position->nominal_vcount);
}
