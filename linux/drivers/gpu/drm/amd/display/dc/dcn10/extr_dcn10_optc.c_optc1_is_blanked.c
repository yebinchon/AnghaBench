
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_BLANK_CONTROL ;
 int OTG_BLANK_DATA_EN ;
 int OTG_CURRENT_BLANK_STATE ;
 int REG_GET_2 (int ,int ,scalar_t__*,int ,scalar_t__*) ;

bool optc1_is_blanked(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 uint32_t blank_en;
 uint32_t blank_state;

 REG_GET_2(OTG_BLANK_CONTROL,
   OTG_BLANK_DATA_EN, &blank_en,
   OTG_CURRENT_BLANK_STATE, &blank_state);

 return blank_en && blank_state;
}
