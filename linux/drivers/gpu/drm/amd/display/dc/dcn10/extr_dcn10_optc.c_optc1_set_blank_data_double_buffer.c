
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_BLANK_DATA_DOUBLE_BUFFER_EN ;
 int OTG_DOUBLE_BUFFER_CONTROL ;
 int REG_UPDATE (int ,int ,int) ;

void optc1_set_blank_data_double_buffer(struct timing_generator *optc, bool enable)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 uint32_t blank_data_double_buffer_enable = enable ? 1 : 0;

 REG_UPDATE(OTG_DOUBLE_BUFFER_CONTROL,
   OTG_BLANK_DATA_DOUBLE_BUFFER_EN, blank_data_double_buffer_enable);
}
