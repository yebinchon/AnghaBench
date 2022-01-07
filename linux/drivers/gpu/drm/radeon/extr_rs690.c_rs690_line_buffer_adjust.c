
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__** crtcs; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct drm_display_mode {int hdisplay; int crtc_hdisplay; } ;
struct TYPE_3__ {void* lb_vblank_lead_lines; } ;


 int C_006520_DC_LB_MEMORY_SPLIT ;
 int C_006520_DC_LB_MEMORY_SPLIT_MODE ;
 void* DIV_ROUND_UP (int,int ) ;
 int RREG32 (int ) ;
 int R_006520_DC_LB_MEMORY_SPLIT ;
 int V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF ;
 int V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q ;
 int V_006520_DC_LB_MEMORY_SPLIT_D1_3Q_D2_1Q ;
 int V_006520_DC_LB_MEMORY_SPLIT_D1_ONLY ;
 int WREG32 (int ,int) ;

void rs690_line_buffer_adjust(struct radeon_device *rdev,
         struct drm_display_mode *mode1,
         struct drm_display_mode *mode2)
{
 u32 tmp;


 u32 lb_size = 8192;
 tmp = RREG32(R_006520_DC_LB_MEMORY_SPLIT) & C_006520_DC_LB_MEMORY_SPLIT;
 tmp &= ~C_006520_DC_LB_MEMORY_SPLIT_MODE;

 if (mode1 && mode2) {
  if (mode1->hdisplay > mode2->hdisplay) {
   if (mode1->hdisplay > 2560)
    tmp |= V_006520_DC_LB_MEMORY_SPLIT_D1_3Q_D2_1Q;
   else
    tmp |= V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF;
  } else if (mode2->hdisplay > mode1->hdisplay) {
   if (mode2->hdisplay > 2560)
    tmp |= V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q;
   else
    tmp |= V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF;
  } else
   tmp |= V_006520_DC_LB_MEMORY_SPLIT_D1HALF_D2HALF;
 } else if (mode1) {
  tmp |= V_006520_DC_LB_MEMORY_SPLIT_D1_ONLY;
 } else if (mode2) {
  tmp |= V_006520_DC_LB_MEMORY_SPLIT_D1_1Q_D2_3Q;
 }
 WREG32(R_006520_DC_LB_MEMORY_SPLIT, tmp);


 if (mode1)
  rdev->mode_info.crtcs[0]->lb_vblank_lead_lines = DIV_ROUND_UP(lb_size, mode1->crtc_hdisplay);

 if (mode2)
  rdev->mode_info.crtcs[1]->lb_vblank_lead_lines = DIV_ROUND_UP(lb_size, mode2->crtc_hdisplay);
}
