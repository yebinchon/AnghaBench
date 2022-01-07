
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_GSL_CHECK_LINE_NUM ;
 int CRTC_GSL_CONTROL ;
 int CRTC_GSL_FORCE_DELAY ;
 scalar_t__ CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int DCP_GSL0_EN ;
 int DCP_GSL_CONTROL ;
 int DCP_GSL_DELAY_SURFACE_UPDATE_PENDING ;
 int DCP_GSL_HSYNC_FLIP_CHECK_DELAY ;
 int DCP_GSL_HSYNC_FLIP_FORCE_DELAY ;
 int DCP_GSL_MASTER_EN ;
 int DCP_GSL_SYNC_SOURCE ;
 scalar_t__ DCP_REG (int ) ;
 scalar_t__ dm_read_reg (int ,scalar_t__) ;
 int dm_write_reg (int ,scalar_t__,scalar_t__) ;
 int mmCRTC_GSL_CONTROL ;
 int mmCRTC_V_TOTAL ;
 int mmDCP_GSL_CONTROL ;
 int set_reg_field_value (scalar_t__,int,int ,int ) ;

void dce110_timing_generator_tear_down_global_swap_lock(
 struct timing_generator *tg)
{




 uint32_t value;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t address = DCP_REG(mmDCP_GSL_CONTROL);

 value = 0;



 set_reg_field_value(value,
   0,
   DCP_GSL_CONTROL,
   DCP_GSL0_EN);

 set_reg_field_value(value,
   0,
   DCP_GSL_CONTROL,
   DCP_GSL_MASTER_EN);

 set_reg_field_value(value,
   0x2,
   DCP_GSL_CONTROL,
   DCP_GSL_HSYNC_FLIP_FORCE_DELAY);

 set_reg_field_value(value,
   0x6,
   DCP_GSL_CONTROL,
   DCP_GSL_HSYNC_FLIP_CHECK_DELAY);


 {
  uint32_t value_crtc_vtotal;

  value_crtc_vtotal = dm_read_reg(tg->ctx,
    CRTC_REG(mmCRTC_V_TOTAL));

  set_reg_field_value(value,
    0,
    DCP_GSL_CONTROL,
    DCP_GSL_SYNC_SOURCE);
 }

 set_reg_field_value(value,
   0,
   DCP_GSL_CONTROL,
   DCP_GSL_DELAY_SURFACE_UPDATE_PENDING);

 dm_write_reg(tg->ctx, address, value);


 address = CRTC_REG(mmCRTC_GSL_CONTROL);

 value = 0;
 set_reg_field_value(value,
   0,
   CRTC_GSL_CONTROL,
   CRTC_GSL_CHECK_LINE_NUM);

 set_reg_field_value(value,
   0x2,
   CRTC_GSL_CONTROL,
   CRTC_GSL_FORCE_DELAY);

 dm_write_reg(tg->ctx, address, value);
}
