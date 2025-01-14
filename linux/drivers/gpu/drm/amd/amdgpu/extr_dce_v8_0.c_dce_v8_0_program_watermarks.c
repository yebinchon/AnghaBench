
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct drm_display_mode {int flags; scalar_t__ crtc_hdisplay; scalar_t__ clock; scalar_t__ crtc_htotal; } ;
struct dce8_wm_params {int yclk; int sclk; int active_time; int blank_time; int interlaced; int vtaps; int bytes_per_pixel; int lb_size; int num_heads; void* dram_channels; int vsc; scalar_t__ src_width; scalar_t__ disp_clk; } ;
struct TYPE_6__ {int disp_priority; } ;
struct TYPE_5__ {int current_mclk; int current_sclk; scalar_t__ dpm_enabled; } ;
struct amdgpu_device {TYPE_3__ mode_info; TYPE_2__ pm; } ;
struct TYPE_4__ {scalar_t__ enabled; struct drm_display_mode mode; } ;
struct amdgpu_crtc {scalar_t__ rmx_type; int line_time; int wm_high; int wm_low; int lb_vblank_lead_lines; scalar_t__ crtc_offset; int vsc; TYPE_1__ base; } ;


 int DIV_ROUND_UP (int,scalar_t__) ;
 int DPG_PIPE_URGENCY_CONTROL__URGENCY_HIGH_WATERMARK__SHIFT ;
 int DPG_PIPE_URGENCY_CONTROL__URGENCY_LOW_WATERMARK__SHIFT ;
 int DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_MODE_FLAG_INTERLACE ;
 scalar_t__ RMX_OFF ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int) ;
 int amdgpu_dpm_get_mclk (struct amdgpu_device*,int) ;
 int amdgpu_dpm_get_sclk (struct amdgpu_device*,int) ;
 void* cik_get_number_of_dram_channels (struct amdgpu_device*) ;
 int dce_v8_0_average_bandwidth_vs_available_bandwidth (struct dce8_wm_params*) ;
 int dce_v8_0_average_bandwidth_vs_dram_bandwidth_for_display (struct dce8_wm_params*) ;
 int dce_v8_0_check_latency_hiding (struct dce8_wm_params*) ;
 int dce_v8_0_latency_watermark (struct dce8_wm_params*) ;
 scalar_t__ div_u64 (int,int) ;
 int min (int,int) ;
 scalar_t__ mmDPG_PIPE_URGENCY_CONTROL ;
 scalar_t__ mmDPG_WATERMARK_MASK_CONTROL ;

__attribute__((used)) static void dce_v8_0_program_watermarks(struct amdgpu_device *adev,
     struct amdgpu_crtc *amdgpu_crtc,
     u32 lb_size, u32 num_heads)
{
 struct drm_display_mode *mode = &amdgpu_crtc->base.mode;
 struct dce8_wm_params wm_low, wm_high;
 u32 active_time;
 u32 line_time = 0;
 u32 latency_watermark_a = 0, latency_watermark_b = 0;
 u32 tmp, wm_mask, lb_vblank_lead_lines = 0;

 if (amdgpu_crtc->base.enabled && num_heads && mode) {
  active_time = (u32) div_u64((u64)mode->crtc_hdisplay * 1000000,
         (u32)mode->clock);
  line_time = (u32) div_u64((u64)mode->crtc_htotal * 1000000,
       (u32)mode->clock);
  line_time = min(line_time, (u32)65535);


  if (adev->pm.dpm_enabled) {
   wm_high.yclk =
    amdgpu_dpm_get_mclk(adev, 0) * 10;
   wm_high.sclk =
    amdgpu_dpm_get_sclk(adev, 0) * 10;
  } else {
   wm_high.yclk = adev->pm.current_mclk * 10;
   wm_high.sclk = adev->pm.current_sclk * 10;
  }

  wm_high.disp_clk = mode->clock;
  wm_high.src_width = mode->crtc_hdisplay;
  wm_high.active_time = active_time;
  wm_high.blank_time = line_time - wm_high.active_time;
  wm_high.interlaced = 0;
  if (mode->flags & DRM_MODE_FLAG_INTERLACE)
   wm_high.interlaced = 1;
  wm_high.vsc = amdgpu_crtc->vsc;
  wm_high.vtaps = 1;
  if (amdgpu_crtc->rmx_type != RMX_OFF)
   wm_high.vtaps = 2;
  wm_high.bytes_per_pixel = 4;
  wm_high.lb_size = lb_size;
  wm_high.dram_channels = cik_get_number_of_dram_channels(adev);
  wm_high.num_heads = num_heads;


  latency_watermark_a = min(dce_v8_0_latency_watermark(&wm_high), (u32)65535);



  if (!dce_v8_0_average_bandwidth_vs_dram_bandwidth_for_display(&wm_high) ||
      !dce_v8_0_average_bandwidth_vs_available_bandwidth(&wm_high) ||
      !dce_v8_0_check_latency_hiding(&wm_high) ||
      (adev->mode_info.disp_priority == 2)) {
   DRM_DEBUG_KMS("force priority to high\n");
  }


  if (adev->pm.dpm_enabled) {
   wm_low.yclk =
    amdgpu_dpm_get_mclk(adev, 1) * 10;
   wm_low.sclk =
    amdgpu_dpm_get_sclk(adev, 1) * 10;
  } else {
   wm_low.yclk = adev->pm.current_mclk * 10;
   wm_low.sclk = adev->pm.current_sclk * 10;
  }

  wm_low.disp_clk = mode->clock;
  wm_low.src_width = mode->crtc_hdisplay;
  wm_low.active_time = active_time;
  wm_low.blank_time = line_time - wm_low.active_time;
  wm_low.interlaced = 0;
  if (mode->flags & DRM_MODE_FLAG_INTERLACE)
   wm_low.interlaced = 1;
  wm_low.vsc = amdgpu_crtc->vsc;
  wm_low.vtaps = 1;
  if (amdgpu_crtc->rmx_type != RMX_OFF)
   wm_low.vtaps = 2;
  wm_low.bytes_per_pixel = 4;
  wm_low.lb_size = lb_size;
  wm_low.dram_channels = cik_get_number_of_dram_channels(adev);
  wm_low.num_heads = num_heads;


  latency_watermark_b = min(dce_v8_0_latency_watermark(&wm_low), (u32)65535);



  if (!dce_v8_0_average_bandwidth_vs_dram_bandwidth_for_display(&wm_low) ||
      !dce_v8_0_average_bandwidth_vs_available_bandwidth(&wm_low) ||
      !dce_v8_0_check_latency_hiding(&wm_low) ||
      (adev->mode_info.disp_priority == 2)) {
   DRM_DEBUG_KMS("force priority to high\n");
  }
  lb_vblank_lead_lines = DIV_ROUND_UP(lb_size, mode->crtc_hdisplay);
 }


 wm_mask = RREG32(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset);
 tmp = wm_mask;
 tmp &= ~(3 << DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT);
 tmp |= (1 << DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT);
 WREG32(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset, tmp);
 WREG32(mmDPG_PIPE_URGENCY_CONTROL + amdgpu_crtc->crtc_offset,
        ((latency_watermark_a << DPG_PIPE_URGENCY_CONTROL__URGENCY_LOW_WATERMARK__SHIFT) |
  (line_time << DPG_PIPE_URGENCY_CONTROL__URGENCY_HIGH_WATERMARK__SHIFT)));

 tmp = RREG32(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset);
 tmp &= ~(3 << DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT);
 tmp |= (2 << DPG_WATERMARK_MASK_CONTROL__URGENCY_WATERMARK_MASK__SHIFT);
 WREG32(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset, tmp);
 WREG32(mmDPG_PIPE_URGENCY_CONTROL + amdgpu_crtc->crtc_offset,
        ((latency_watermark_b << DPG_PIPE_URGENCY_CONTROL__URGENCY_LOW_WATERMARK__SHIFT) |
  (line_time << DPG_PIPE_URGENCY_CONTROL__URGENCY_HIGH_WATERMARK__SHIFT)));

 WREG32(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset, wm_mask);


 amdgpu_crtc->line_time = line_time;
 amdgpu_crtc->wm_high = latency_watermark_a;
 amdgpu_crtc->wm_low = latency_watermark_b;

 amdgpu_crtc->lb_vblank_lead_lines = lb_vblank_lead_lines;
}
