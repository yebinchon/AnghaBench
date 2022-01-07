
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int ctx; } ;


 int CRTCV_MASTER_EN ;
 int CRTCV_MASTER_UPDATE_MODE ;
 int CRTC_MASTER_EN ;
 int MASTER_UPDATE_MODE ;
 int dm_write_reg (int ,int ,scalar_t__) ;
 int mmCRTCV_MASTER_EN ;
 int mmCRTCV_MASTER_UPDATE_MODE ;
 int set_reg_field_value (scalar_t__,int,int ,int ) ;

__attribute__((used)) static bool dce110_timing_generator_v_enable_crtc(struct timing_generator *tg)
{





 uint32_t value;

 value = 0;
 set_reg_field_value(value, 0,
   CRTCV_MASTER_UPDATE_MODE, MASTER_UPDATE_MODE);
 dm_write_reg(tg->ctx,
   mmCRTCV_MASTER_UPDATE_MODE, value);


 value = 0;
 dm_write_reg(tg->ctx, mmCRTCV_MASTER_UPDATE_MODE, value);

 value = 0;
 set_reg_field_value(value, 1,
   CRTCV_MASTER_EN, CRTC_MASTER_EN);
 dm_write_reg(tg->ctx,
   mmCRTCV_MASTER_EN, value);

 return 1;
}
