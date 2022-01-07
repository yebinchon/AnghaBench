
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timing_generator {int ctx; } ;
struct TYPE_2__ {int crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;
struct crc_params {int selection; scalar_t__ continuous_mode; int windowb_y_end; int windowb_y_start; int windowb_x_end; int windowb_x_start; int windowa_y_end; int windowa_y_start; int windowa_x_end; int windowa_x_start; int enable; } ;


 int CRTC0_CRTC_CRC0_WINDOWA_X_CONTROL ;
 int CRTC0_CRTC_CRC0_WINDOWA_Y_CONTROL ;
 int CRTC0_CRTC_CRC0_WINDOWB_X_CONTROL ;
 int CRTC0_CRTC_CRC0_WINDOWB_Y_CONTROL ;
 int CRTC0_CRTC_CRC_CNTL ;
 int CRTC_CRC0_SELECT ;
 int CRTC_CRC0_WINDOWA_X_END ;
 int CRTC_CRC0_WINDOWA_X_START ;
 int CRTC_CRC0_WINDOWA_Y_END ;
 int CRTC_CRC0_WINDOWA_Y_START ;
 int CRTC_CRC0_WINDOWB_X_END ;
 int CRTC_CRC0_WINDOWB_X_START ;
 int CRTC_CRC0_WINDOWB_Y_END ;
 int CRTC_CRC0_WINDOWB_Y_START ;
 int CRTC_CRC_EN ;
 int CRTC_REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int CRTC_REG_UPDATE_3 (int ,int ,int,int ,int ,int ,int) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dce120_is_tg_enabled (struct timing_generator*) ;
 int dm_write_reg_soc15 (int ,int ,int ,int ) ;
 int mmCRTC0_CRTC_CRC_CNTL ;

__attribute__((used)) static bool dce120_configure_crc(struct timing_generator *tg,
     const struct crc_params *params)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);


 if (!dce120_is_tg_enabled(tg))
  return 0;


 dm_write_reg_soc15(tg->ctx, mmCRTC0_CRTC_CRC_CNTL,
      tg110->offsets.crtc, 0);

 if (!params->enable)
  return 1;



 CRTC_REG_UPDATE_2(CRTC0_CRTC_CRC0_WINDOWA_X_CONTROL,
     CRTC_CRC0_WINDOWA_X_START, params->windowa_x_start,
     CRTC_CRC0_WINDOWA_X_END, params->windowa_x_end);


 CRTC_REG_UPDATE_2(CRTC0_CRTC_CRC0_WINDOWA_Y_CONTROL,
     CRTC_CRC0_WINDOWA_Y_START, params->windowa_y_start,
     CRTC_CRC0_WINDOWA_Y_END, params->windowa_y_end);


 CRTC_REG_UPDATE_2(CRTC0_CRTC_CRC0_WINDOWB_X_CONTROL,
     CRTC_CRC0_WINDOWB_X_START, params->windowb_x_start,
     CRTC_CRC0_WINDOWB_X_END, params->windowb_x_end);


 CRTC_REG_UPDATE_2(CRTC0_CRTC_CRC0_WINDOWB_Y_CONTROL,
     CRTC_CRC0_WINDOWB_Y_START, params->windowb_y_start,
     CRTC_CRC0_WINDOWB_Y_END, params->windowb_y_end);


 CRTC_REG_UPDATE_3(CRTC0_CRTC_CRC_CNTL,
     CRTC_CRC_EN, params->continuous_mode ? 1 : 0,
     CRTC_CRC0_SELECT, params->selection,
     CRTC_CRC_EN, 1);

 return 1;
}
