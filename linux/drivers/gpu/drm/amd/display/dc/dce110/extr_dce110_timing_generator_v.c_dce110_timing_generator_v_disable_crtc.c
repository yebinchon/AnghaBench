
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;


 int CRTCV_CONTROL ;
 int CRTC_DISABLE_POINT_CNTL ;
 int CRTC_MASTER_EN ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTCV_CONTROL ;
 int set_reg_field_value (int ,int ,int ,int ) ;

__attribute__((used)) static bool dce110_timing_generator_v_disable_crtc(struct timing_generator *tg)
{
 uint32_t value;

 value = dm_read_reg(tg->ctx,
   mmCRTCV_CONTROL);
 set_reg_field_value(value, 0,
   CRTCV_CONTROL, CRTC_DISABLE_POINT_CNTL);
 set_reg_field_value(value, 0,
    CRTCV_CONTROL, CRTC_MASTER_EN);
 dm_write_reg(tg->ctx,
   mmCRTCV_CONTROL, value);




 return 1;
}
