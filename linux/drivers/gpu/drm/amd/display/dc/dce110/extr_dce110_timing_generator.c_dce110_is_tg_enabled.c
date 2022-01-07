
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_CONTROL ;
 int CRTC_CURRENT_MASTER_EN_STATE ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int) ;
 int get_reg_field_value (int,int ,int ) ;
 int mmCRTC_CONTROL ;

__attribute__((used)) static bool dce110_is_tg_enabled(struct timing_generator *tg)
{
 uint32_t addr = 0;
 uint32_t value = 0;
 uint32_t field = 0;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 addr = CRTC_REG(mmCRTC_CONTROL);
 value = dm_read_reg(tg->ctx, addr);
 field = get_reg_field_value(value, CRTC_CONTROL,
        CRTC_CURRENT_MASTER_EN_STATE);
 return field == 1;
}
