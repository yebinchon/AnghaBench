
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_FRAME_COUNT ;
 int OTG_STATUS_FRAME_COUNT ;
 int REG_GET (int ,int ,int *) ;

uint32_t optc1_get_vblank_counter(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t frame_count;

 REG_GET(OTG_STATUS_FRAME_COUNT,
  OTG_FRAME_COUNT, &frame_count);

 return frame_count;
}
