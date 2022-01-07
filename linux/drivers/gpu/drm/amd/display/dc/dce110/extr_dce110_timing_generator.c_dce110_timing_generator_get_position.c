
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct crtc_position {void* nominal_vcount; void* vertical_count; void* horizontal_count; } ;


 int CRTC_HORZ_COUNT ;
 int CRTC_NOM_VERT_POSITION ;
 int CRTC_REG (int ) ;
 int CRTC_STATUS_POSITION ;
 int CRTC_VERT_COUNT ;
 int CRTC_VERT_COUNT_NOM ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 void* get_reg_field_value (int ,int ,int ) ;
 int mmCRTC_NOM_VERT_POSITION ;
 int mmCRTC_STATUS_POSITION ;

void dce110_timing_generator_get_position(struct timing_generator *tg,
 struct crtc_position *position)
{
 uint32_t value;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_STATUS_POSITION));

 position->horizontal_count = get_reg_field_value(
   value,
   CRTC_STATUS_POSITION,
   CRTC_HORZ_COUNT);

 position->vertical_count = get_reg_field_value(
   value,
   CRTC_STATUS_POSITION,
   CRTC_VERT_COUNT);

 value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_NOM_VERT_POSITION));

 position->nominal_vcount = get_reg_field_value(
   value,
   CRTC_NOM_VERT_POSITION,
   CRTC_VERT_COUNT_NOM);
}
