
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct crc_params {int selection; scalar_t__ continuous_mode; int windowb_y_end; int windowb_y_start; int windowb_x_end; int windowb_x_start; int windowa_y_end; int windowa_y_start; int windowa_x_end; int windowa_x_start; int enable; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_CRC0_SELECT ;
 int OTG_CRC0_WINDOWA_X_CONTROL ;
 int OTG_CRC0_WINDOWA_X_END ;
 int OTG_CRC0_WINDOWA_X_START ;
 int OTG_CRC0_WINDOWA_Y_CONTROL ;
 int OTG_CRC0_WINDOWA_Y_END ;
 int OTG_CRC0_WINDOWA_Y_START ;
 int OTG_CRC0_WINDOWB_X_CONTROL ;
 int OTG_CRC0_WINDOWB_X_END ;
 int OTG_CRC0_WINDOWB_X_START ;
 int OTG_CRC0_WINDOWB_Y_CONTROL ;
 int OTG_CRC0_WINDOWB_Y_END ;
 int OTG_CRC0_WINDOWB_Y_START ;
 int OTG_CRC_CNTL ;
 int OTG_CRC_CONT_EN ;
 int OTG_CRC_EN ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int REG_UPDATE_3 (int ,int ,int,int ,int ,int ,int) ;
 int REG_WRITE (int ,int ) ;
 int optc1_is_tg_enabled (struct timing_generator*) ;

bool optc1_configure_crc(struct timing_generator *optc,
     const struct crc_params *params)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);


 if (!optc1_is_tg_enabled(optc))
  return 0;

 REG_WRITE(OTG_CRC_CNTL, 0);

 if (!params->enable)
  return 1;



 REG_UPDATE_2(OTG_CRC0_WINDOWA_X_CONTROL,
   OTG_CRC0_WINDOWA_X_START, params->windowa_x_start,
   OTG_CRC0_WINDOWA_X_END, params->windowa_x_end);


 REG_UPDATE_2(OTG_CRC0_WINDOWA_Y_CONTROL,
   OTG_CRC0_WINDOWA_Y_START, params->windowa_y_start,
   OTG_CRC0_WINDOWA_Y_END, params->windowa_y_end);


 REG_UPDATE_2(OTG_CRC0_WINDOWB_X_CONTROL,
   OTG_CRC0_WINDOWB_X_START, params->windowb_x_start,
   OTG_CRC0_WINDOWB_X_END, params->windowb_x_end);


 REG_UPDATE_2(OTG_CRC0_WINDOWB_Y_CONTROL,
   OTG_CRC0_WINDOWB_Y_START, params->windowb_y_start,
   OTG_CRC0_WINDOWB_Y_END, params->windowb_y_end);


 REG_UPDATE_3(OTG_CRC_CNTL,
   OTG_CRC_CONT_EN, params->continuous_mode ? 1 : 0,
   OTG_CRC0_SELECT, params->selection,
   OTG_CRC_EN, 1);

 return 1;
}
