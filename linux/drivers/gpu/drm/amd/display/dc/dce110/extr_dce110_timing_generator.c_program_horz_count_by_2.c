
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct TYPE_2__ {scalar_t__ HORZ_COUNT_BY_TWO; } ;
struct dc_crtc_timing {TYPE_1__ flags; } ;


 int CRTC_COUNT_CONTROL ;
 int CRTC_HORZ_COUNT_BY2_EN ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTC_COUNT_CONTROL ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void program_horz_count_by_2(
 struct timing_generator *tg,
 const struct dc_crtc_timing *timing)
{
 uint32_t regval;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 regval = dm_read_reg(tg->ctx,
   CRTC_REG(mmCRTC_COUNT_CONTROL));

 set_reg_field_value(regval, 0, CRTC_COUNT_CONTROL,
   CRTC_HORZ_COUNT_BY2_EN);

 if (timing->flags.HORZ_COUNT_BY_TWO)
  set_reg_field_value(regval, 1, CRTC_COUNT_CONTROL,
     CRTC_HORZ_COUNT_BY2_EN);

 dm_write_reg(tg->ctx,
   CRTC_REG(mmCRTC_COUNT_CONTROL), regval);
}
