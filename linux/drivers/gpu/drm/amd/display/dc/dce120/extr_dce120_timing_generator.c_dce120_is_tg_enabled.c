
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct TYPE_2__ {int crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;


 int CRTC0_CRTC_CONTROL ;
 int CRTC_CURRENT_MASTER_EN_STATE ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg_soc15 (int ,int ,int ) ;
 int get_reg_field_value (int,int ,int ) ;
 int mmCRTC0_CRTC_CONTROL ;

__attribute__((used)) static bool dce120_is_tg_enabled(struct timing_generator *tg)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value, field;

 value = dm_read_reg_soc15(tg->ctx, mmCRTC0_CRTC_CONTROL,
      tg110->offsets.crtc);
 field = get_reg_field_value(value, CRTC0_CRTC_CONTROL,
        CRTC_CURRENT_MASTER_EN_STATE);

 return field == 1;
}
