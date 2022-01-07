
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scaler_data {int v_active; int h_active; } ;
struct dcn10_dpp {int dummy; } ;


 int OTG_H_BLANK ;
 int OTG_H_BLANK_END ;
 int OTG_H_BLANK_START ;
 int OTG_V_BLANK ;
 int OTG_V_BLANK_END ;
 int OTG_V_BLANK_START ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dpp1_dscl_set_otg_blank(
  struct dcn10_dpp *dpp, const struct scaler_data *data)
{
 uint32_t h_blank_start = data->h_active;
 uint32_t h_blank_end = 0;
 uint32_t v_blank_start = data->v_active;
 uint32_t v_blank_end = 0;

 REG_SET_2(OTG_H_BLANK, 0,
   OTG_H_BLANK_START, h_blank_start,
   OTG_H_BLANK_END, h_blank_end);

 REG_SET_2(OTG_V_BLANK, 0,
   OTG_V_BLANK_START, v_blank_start,
   OTG_V_BLANK_END, v_blank_end);
}
