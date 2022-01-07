
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int inst; int ctx; } ;
struct dcp_gsl_params {int gsl_master; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_GSL_CHECK_LINE_NUM ;
 int CRTC_GSL_CONTROL ;
 int CRTC_GSL_FORCE_DELAY ;
 int CRTC_REG (int ) ;
 int CRTC_V_TOTAL ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int DCIO_GSL0_CNTL ;
 int DCIO_GSL0_GLOBAL_UNLOCK_SEL ;
 int DCIO_GSL0_TIMING_SYNC_SEL ;
 int DCIO_GSL0_VSYNC_SEL ;
 int DCP_GSL0_EN ;
 int DCP_GSL_CONTROL ;
 int DCP_GSL_DELAY_SURFACE_UPDATE_PENDING ;
 int DCP_GSL_HSYNC_FLIP_CHECK_DELAY ;
 int DCP_GSL_HSYNC_FLIP_FORCE_DELAY ;
 int DCP_GSL_MASTER_EN ;
 int DCP_GSL_SYNC_SOURCE ;
 int DCP_REG (int ) ;
 int FLIP_READY_BACK_LOOKUP ;
 int HFLIP_CHECK_DELAY ;
 int HFLIP_READY_DELAY ;
 int VFLIP_READY_DELAY ;
 int dm_read_reg (int ,int) ;
 int dm_write_reg (int ,int,int) ;
 int get_reg_field_value (int,int ,int ) ;
 int mmCRTC_GSL_CONTROL ;
 int mmCRTC_GSL_WINDOW ;
 int mmCRTC_V_TOTAL ;
 int mmDCIO_GSL0_CNTL ;
 int mmDCP_GSL_CONTROL ;
 int set_reg_field_value (int,int,int ,int ) ;

void dce110_timing_generator_setup_global_swap_lock(
 struct timing_generator *tg,
 const struct dcp_gsl_params *gsl_params)
{
 uint32_t value;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t address = DCP_REG(mmDCP_GSL_CONTROL);
 uint32_t check_point = FLIP_READY_BACK_LOOKUP;

 value = dm_read_reg(tg->ctx, address);


 set_reg_field_value(value,
       1,
       DCP_GSL_CONTROL,
       DCP_GSL0_EN);

 set_reg_field_value(value,
       gsl_params->gsl_master == tg->inst,
       DCP_GSL_CONTROL,
       DCP_GSL_MASTER_EN);

 set_reg_field_value(value,
       HFLIP_READY_DELAY,
       DCP_GSL_CONTROL,
       DCP_GSL_HSYNC_FLIP_FORCE_DELAY);



 set_reg_field_value(value,
       HFLIP_CHECK_DELAY,
       DCP_GSL_CONTROL,
       DCP_GSL_HSYNC_FLIP_CHECK_DELAY);

 dm_write_reg(tg->ctx, CRTC_REG(mmDCP_GSL_CONTROL), value);
 value = 0;

 set_reg_field_value(value,
       gsl_params->gsl_master,
       DCIO_GSL0_CNTL,
       DCIO_GSL0_VSYNC_SEL);

 set_reg_field_value(value,
       0,
       DCIO_GSL0_CNTL,
       DCIO_GSL0_TIMING_SYNC_SEL);

 set_reg_field_value(value,
       0,
       DCIO_GSL0_CNTL,
       DCIO_GSL0_GLOBAL_UNLOCK_SEL);

 dm_write_reg(tg->ctx, CRTC_REG(mmDCIO_GSL0_CNTL), value);


 {
  uint32_t value_crtc_vtotal;

  value_crtc_vtotal = dm_read_reg(tg->ctx,
    CRTC_REG(mmCRTC_V_TOTAL));

  set_reg_field_value(value,
        0,
        DCP_GSL_CONTROL,
        DCP_GSL_SYNC_SOURCE);


  check_point = get_reg_field_value(value_crtc_vtotal,
        CRTC_V_TOTAL,
        CRTC_V_TOTAL);

  dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_GSL_WINDOW), 0);
 }

 set_reg_field_value(value,
       1,
       DCP_GSL_CONTROL,
       DCP_GSL_DELAY_SURFACE_UPDATE_PENDING);

 dm_write_reg(tg->ctx, address, value);


 address = CRTC_REG(mmCRTC_GSL_CONTROL);

 value = dm_read_reg(tg->ctx, address);
 set_reg_field_value(value,
       check_point - FLIP_READY_BACK_LOOKUP,
       CRTC_GSL_CONTROL,
       CRTC_GSL_CHECK_LINE_NUM);

 set_reg_field_value(value,
       VFLIP_READY_DELAY,
       CRTC_GSL_CONTROL,
       CRTC_GSL_FORCE_DELAY);

 dm_write_reg(tg->ctx, address, value);
}
