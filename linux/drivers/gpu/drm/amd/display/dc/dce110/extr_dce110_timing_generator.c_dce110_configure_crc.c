
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct crc_params {int windowa_x_start; int windowa_x_end; int windowa_y_start; int windowa_y_end; int windowb_x_start; int windowb_x_end; int windowb_y_start; int windowb_y_end; int selection; scalar_t__ continuous_mode; int enable; } ;


 int CRTC_CRC0_SELECT ;
 int CRTC_CRC0_WINDOWA_X_CONTROL ;
 int CRTC_CRC0_WINDOWA_X_END ;
 int CRTC_CRC0_WINDOWA_X_START ;
 int CRTC_CRC0_WINDOWA_Y_CONTROL ;
 int CRTC_CRC0_WINDOWA_Y_END ;
 int CRTC_CRC0_WINDOWA_Y_START ;
 int CRTC_CRC0_WINDOWB_X_CONTROL ;
 int CRTC_CRC0_WINDOWB_X_END ;
 int CRTC_CRC0_WINDOWB_X_START ;
 int CRTC_CRC0_WINDOWB_Y_CONTROL ;
 int CRTC_CRC0_WINDOWB_Y_END ;
 int CRTC_CRC0_WINDOWB_Y_START ;
 int CRTC_CRC_CNTL ;
 int CRTC_CRC_CONT_EN ;
 int CRTC_CRC_EN ;
 scalar_t__ CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dce110_is_tg_enabled (struct timing_generator*) ;
 int dm_write_reg (int ,scalar_t__,scalar_t__) ;
 int mmCRTC_CRC0_WINDOWA_X_CONTROL ;
 int mmCRTC_CRC0_WINDOWA_Y_CONTROL ;
 int mmCRTC_CRC0_WINDOWB_X_CONTROL ;
 int mmCRTC_CRC0_WINDOWB_Y_CONTROL ;
 int mmCRTC_CRC_CNTL ;
 int set_reg_field_value (scalar_t__,int,int ,int ) ;

bool dce110_configure_crc(struct timing_generator *tg,
     const struct crc_params *params)
{
 uint32_t cntl_addr = 0;
 uint32_t addr = 0;
 uint32_t value;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);


 if (!dce110_is_tg_enabled(tg))
  return 0;

 cntl_addr = CRTC_REG(mmCRTC_CRC_CNTL);


 dm_write_reg(tg->ctx, cntl_addr, 0);

 if (!params->enable)
  return 1;



 value = 0;
 addr = CRTC_REG(mmCRTC_CRC0_WINDOWA_X_CONTROL);
 set_reg_field_value(value, params->windowa_x_start,
       CRTC_CRC0_WINDOWA_X_CONTROL,
       CRTC_CRC0_WINDOWA_X_START);
 set_reg_field_value(value, params->windowa_x_end,
       CRTC_CRC0_WINDOWA_X_CONTROL,
       CRTC_CRC0_WINDOWA_X_END);
 dm_write_reg(tg->ctx, addr, value);


 value = 0;
 addr = CRTC_REG(mmCRTC_CRC0_WINDOWA_Y_CONTROL);
 set_reg_field_value(value, params->windowa_y_start,
       CRTC_CRC0_WINDOWA_Y_CONTROL,
       CRTC_CRC0_WINDOWA_Y_START);
 set_reg_field_value(value, params->windowa_y_end,
       CRTC_CRC0_WINDOWA_Y_CONTROL,
       CRTC_CRC0_WINDOWA_Y_END);
 dm_write_reg(tg->ctx, addr, value);


 value = 0;
 addr = CRTC_REG(mmCRTC_CRC0_WINDOWB_X_CONTROL);
 set_reg_field_value(value, params->windowb_x_start,
       CRTC_CRC0_WINDOWB_X_CONTROL,
       CRTC_CRC0_WINDOWB_X_START);
 set_reg_field_value(value, params->windowb_x_end,
       CRTC_CRC0_WINDOWB_X_CONTROL,
       CRTC_CRC0_WINDOWB_X_END);
 dm_write_reg(tg->ctx, addr, value);


 value = 0;
 addr = CRTC_REG(mmCRTC_CRC0_WINDOWB_Y_CONTROL);
 set_reg_field_value(value, params->windowb_y_start,
       CRTC_CRC0_WINDOWB_Y_CONTROL,
       CRTC_CRC0_WINDOWB_Y_START);
 set_reg_field_value(value, params->windowb_y_end,
       CRTC_CRC0_WINDOWB_Y_CONTROL,
       CRTC_CRC0_WINDOWB_Y_END);
 dm_write_reg(tg->ctx, addr, value);


 value = 0;
 set_reg_field_value(value, params->continuous_mode ? 1 : 0,
       CRTC_CRC_CNTL, CRTC_CRC_CONT_EN);
 set_reg_field_value(value, params->selection,
       CRTC_CRC_CNTL, CRTC_CRC0_SELECT);
 set_reg_field_value(value, 1, CRTC_CRC_CNTL, CRTC_CRC_EN);
 dm_write_reg(tg->ctx, cntl_addr, value);

 return 1;
}
