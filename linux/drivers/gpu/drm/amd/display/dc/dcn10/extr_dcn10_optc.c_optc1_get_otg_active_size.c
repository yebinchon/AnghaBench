
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_CONTROL ;
 int OTG_H_BLANK_END ;
 int OTG_H_BLANK_START ;
 int OTG_H_BLANK_START_END ;
 int OTG_MASTER_EN ;
 int OTG_V_BLANK_END ;
 int OTG_V_BLANK_START ;
 int OTG_V_BLANK_START_END ;
 int REG_GET (int ,int ,scalar_t__*) ;
 int REG_GET_2 (int ,int ,scalar_t__*,int ,scalar_t__*) ;

bool optc1_get_otg_active_size(struct timing_generator *optc,
  uint32_t *otg_active_width,
  uint32_t *otg_active_height)
{
 uint32_t otg_enabled;
 uint32_t v_blank_start;
 uint32_t v_blank_end;
 uint32_t h_blank_start;
 uint32_t h_blank_end;
 struct optc *optc1 = DCN10TG_FROM_TG(optc);


 REG_GET(OTG_CONTROL,
   OTG_MASTER_EN, &otg_enabled);

 if (otg_enabled == 0)
  return 0;

 REG_GET_2(OTG_V_BLANK_START_END,
   OTG_V_BLANK_START, &v_blank_start,
   OTG_V_BLANK_END, &v_blank_end);

 REG_GET_2(OTG_H_BLANK_START_END,
   OTG_H_BLANK_START, &h_blank_start,
   OTG_H_BLANK_END, &h_blank_end);

 *otg_active_width = v_blank_start - v_blank_end;
 *otg_active_height = h_blank_start - h_blank_end;
 return 1;
}
