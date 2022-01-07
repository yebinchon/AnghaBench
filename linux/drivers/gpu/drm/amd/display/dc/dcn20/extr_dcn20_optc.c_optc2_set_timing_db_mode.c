
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_DOUBLE_BUFFER_CONTROL ;
 int OTG_RANGE_TIMING_DBUF_UPDATE_MODE ;
 int REG_UPDATE (int ,int ,int) ;

void optc2_set_timing_db_mode(struct timing_generator *optc, bool enable)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 uint32_t blank_data_double_buffer_enable = enable ? 1 : 0;

 REG_UPDATE(OTG_DOUBLE_BUFFER_CONTROL,
  OTG_RANGE_TIMING_DBUF_UPDATE_MODE, blank_data_double_buffer_enable);
}
