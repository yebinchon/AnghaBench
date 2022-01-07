
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int default_dispclk; } ;
struct TYPE_4__ {int new_active_crtc_count; } ;
struct TYPE_5__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_3__ clock; TYPE_2__ pm; } ;


 int DC_CAC_VALUE ;
 int GPU_CAC_AVRG_CNTL ;
 int RREG32_SMC (int ) ;
 int WINDOW_SIZE_MASK ;
 int WINDOW_SIZE_SHIFT ;
 int WREG32_SMC (int ,int) ;

__attribute__((used)) static void trinity_add_dccac_value(struct radeon_device *rdev)
{
 u32 gpu_cac_avrg_cntl_window_size;
 u32 num_active_displays = rdev->pm.dpm.new_active_crtc_count;
 u64 disp_clk = rdev->clock.default_dispclk / 100;
 u32 dc_cac_value;

 gpu_cac_avrg_cntl_window_size =
  (RREG32_SMC(GPU_CAC_AVRG_CNTL) & WINDOW_SIZE_MASK) >> WINDOW_SIZE_SHIFT;

 dc_cac_value = (u32)((14213 * disp_clk * disp_clk * (u64)num_active_displays) >>
        (32 - gpu_cac_avrg_cntl_window_size));

 WREG32_SMC(DC_CAC_VALUE, dc_cac_value);
}
