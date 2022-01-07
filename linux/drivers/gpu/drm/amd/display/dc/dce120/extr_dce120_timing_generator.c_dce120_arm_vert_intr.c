
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct timing_generator {TYPE_1__* funcs; } ;
struct dce110_timing_generator {int dummy; } ;
struct TYPE_2__ {int (* get_scanoutpos ) (struct timing_generator*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;} ;


 int CRTC0_CRTC_VERTICAL_INTERRUPT0_POSITION ;
 int CRTC_REG_SET_2 (int ,int ,scalar_t__,int ,scalar_t__) ;
 int CRTC_VERTICAL_INTERRUPT0_LINE_END ;
 int CRTC_VERTICAL_INTERRUPT0_LINE_START ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int stub1 (struct timing_generator*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static bool dce120_arm_vert_intr(
  struct timing_generator *tg,
  uint8_t width)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t v_blank_start, v_blank_end, h_position, v_position;

 tg->funcs->get_scanoutpos(
    tg,
    &v_blank_start,
    &v_blank_end,
    &h_position,
    &v_position);

 if (v_blank_start == 0 || v_blank_end == 0)
  return 0;

 CRTC_REG_SET_2(
   CRTC0_CRTC_VERTICAL_INTERRUPT0_POSITION,
   CRTC_VERTICAL_INTERRUPT0_LINE_START, v_blank_start,
   CRTC_VERTICAL_INTERRUPT0_LINE_END, v_blank_start + width);

 return 1;
}
