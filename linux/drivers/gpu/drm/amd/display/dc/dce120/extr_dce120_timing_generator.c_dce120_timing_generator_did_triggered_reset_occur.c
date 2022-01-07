
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct TYPE_2__ {int crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;


 int CRTC0_CRTC_FORCE_COUNT_NOW_CNTL ;
 int CRTC_FORCE_COUNT_NOW_OCCURRED ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg_soc15 (int ,int ,int ) ;
 scalar_t__ get_reg_field_value (int ,int ,int ) ;
 int mmCRTC0_CRTC_FORCE_COUNT_NOW_CNTL ;

bool dce120_timing_generator_did_triggered_reset_occur(
 struct timing_generator *tg)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value = dm_read_reg_soc15(
   tg->ctx,
   mmCRTC0_CRTC_FORCE_COUNT_NOW_CNTL,
   tg110->offsets.crtc);

 return get_reg_field_value(value,
   CRTC0_CRTC_FORCE_COUNT_NOW_CNTL,
   CRTC_FORCE_COUNT_NOW_OCCURRED) != 0;
}
