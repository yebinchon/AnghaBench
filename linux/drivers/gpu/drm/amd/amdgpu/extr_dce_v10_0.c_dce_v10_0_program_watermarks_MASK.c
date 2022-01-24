#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct drm_display_mode {int flags; scalar_t__ crtc_hdisplay; scalar_t__ clock; scalar_t__ crtc_htotal; } ;
struct dce10_wm_params {int yclk; int sclk; int active_time; int blank_time; int interlaced; int vtaps; int bytes_per_pixel; int lb_size; int num_heads; void* dram_channels; int /*<<< orphan*/  vsc; scalar_t__ src_width; scalar_t__ disp_clk; } ;
struct TYPE_5__ {int disp_priority; } ;
struct TYPE_6__ {int current_mclk; int current_sclk; scalar_t__ dpm_enabled; } ;
struct amdgpu_device {TYPE_2__ mode_info; TYPE_3__ pm; } ;
struct TYPE_4__ {scalar_t__ enabled; struct drm_display_mode mode; } ;
struct amdgpu_crtc {scalar_t__ rmx_type; int line_time; int wm_high; int wm_low; int lb_vblank_lead_lines; scalar_t__ crtc_offset; int /*<<< orphan*/  vsc; TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  DPG_PIPE_URGENCY_CONTROL ; 
 int /*<<< orphan*/  DPG_WATERMARK_MASK_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ RMX_OFF ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  URGENCY_HIGH_WATERMARK ; 
 int /*<<< orphan*/  URGENCY_LOW_WATERMARK ; 
 int /*<<< orphan*/  URGENCY_WATERMARK_MASK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int FUNC5 (struct amdgpu_device*,int) ; 
 int FUNC6 (struct amdgpu_device*,int) ; 
 void* FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct dce10_wm_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct dce10_wm_params*) ; 
 int /*<<< orphan*/  FUNC10 (struct dce10_wm_params*) ; 
 int FUNC11 (struct dce10_wm_params*) ; 
 scalar_t__ FUNC12 (int,int) ; 
 int FUNC13 (int,int) ; 
 scalar_t__ mmDPG_PIPE_URGENCY_CONTROL ; 
 scalar_t__ mmDPG_WATERMARK_MASK_CONTROL ; 

__attribute__((used)) static void FUNC14(struct amdgpu_device *adev,
					struct amdgpu_crtc *amdgpu_crtc,
					u32 lb_size, u32 num_heads)
{
	struct drm_display_mode *mode = &amdgpu_crtc->base.mode;
	struct dce10_wm_params wm_low, wm_high;
	u32 active_time;
	u32 line_time = 0;
	u32 latency_watermark_a = 0, latency_watermark_b = 0;
	u32 tmp, wm_mask, lb_vblank_lead_lines = 0;

	if (amdgpu_crtc->base.enabled && num_heads && mode) {
		active_time = (u32) FUNC12((u64)mode->crtc_hdisplay * 1000000,
					    (u32)mode->clock);
		line_time = (u32) FUNC12((u64)mode->crtc_htotal * 1000000,
					  (u32)mode->clock);
		line_time = FUNC13(line_time, (u32)65535);

		/* watermark for high clocks */
		if (adev->pm.dpm_enabled) {
			wm_high.yclk =
				FUNC5(adev, false) * 10;
			wm_high.sclk =
				FUNC6(adev, false) * 10;
		} else {
			wm_high.yclk = adev->pm.current_mclk * 10;
			wm_high.sclk = adev->pm.current_sclk * 10;
		}

		wm_high.disp_clk = mode->clock;
		wm_high.src_width = mode->crtc_hdisplay;
		wm_high.active_time = active_time;
		wm_high.blank_time = line_time - wm_high.active_time;
		wm_high.interlaced = false;
		if (mode->flags & DRM_MODE_FLAG_INTERLACE)
			wm_high.interlaced = true;
		wm_high.vsc = amdgpu_crtc->vsc;
		wm_high.vtaps = 1;
		if (amdgpu_crtc->rmx_type != RMX_OFF)
			wm_high.vtaps = 2;
		wm_high.bytes_per_pixel = 4; /* XXX: get this from fb config */
		wm_high.lb_size = lb_size;
		wm_high.dram_channels = FUNC7(adev);
		wm_high.num_heads = num_heads;

		/* set for high clocks */
		latency_watermark_a = FUNC13(FUNC11(&wm_high), (u32)65535);

		/* possibly force display priority to high */
		/* should really do this at mode validation time... */
		if (!FUNC9(&wm_high) ||
		    !FUNC8(&wm_high) ||
		    !FUNC10(&wm_high) ||
		    (adev->mode_info.disp_priority == 2)) {
			FUNC1("force priority to high\n");
		}

		/* watermark for low clocks */
		if (adev->pm.dpm_enabled) {
			wm_low.yclk =
				FUNC5(adev, true) * 10;
			wm_low.sclk =
				FUNC6(adev, true) * 10;
		} else {
			wm_low.yclk = adev->pm.current_mclk * 10;
			wm_low.sclk = adev->pm.current_sclk * 10;
		}

		wm_low.disp_clk = mode->clock;
		wm_low.src_width = mode->crtc_hdisplay;
		wm_low.active_time = active_time;
		wm_low.blank_time = line_time - wm_low.active_time;
		wm_low.interlaced = false;
		if (mode->flags & DRM_MODE_FLAG_INTERLACE)
			wm_low.interlaced = true;
		wm_low.vsc = amdgpu_crtc->vsc;
		wm_low.vtaps = 1;
		if (amdgpu_crtc->rmx_type != RMX_OFF)
			wm_low.vtaps = 2;
		wm_low.bytes_per_pixel = 4; /* XXX: get this from fb config */
		wm_low.lb_size = lb_size;
		wm_low.dram_channels = FUNC7(adev);
		wm_low.num_heads = num_heads;

		/* set for low clocks */
		latency_watermark_b = FUNC13(FUNC11(&wm_low), (u32)65535);

		/* possibly force display priority to high */
		/* should really do this at mode validation time... */
		if (!FUNC9(&wm_low) ||
		    !FUNC8(&wm_low) ||
		    !FUNC10(&wm_low) ||
		    (adev->mode_info.disp_priority == 2)) {
			FUNC1("force priority to high\n");
		}
		lb_vblank_lead_lines = FUNC0(lb_size, mode->crtc_hdisplay);
	}

	/* select wm A */
	wm_mask = FUNC3(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC2(wm_mask, DPG_WATERMARK_MASK_CONTROL, URGENCY_WATERMARK_MASK, 1);
	FUNC4(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset, tmp);
	tmp = FUNC3(mmDPG_PIPE_URGENCY_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC2(tmp, DPG_PIPE_URGENCY_CONTROL, URGENCY_LOW_WATERMARK, latency_watermark_a);
	tmp = FUNC2(tmp, DPG_PIPE_URGENCY_CONTROL, URGENCY_HIGH_WATERMARK, line_time);
	FUNC4(mmDPG_PIPE_URGENCY_CONTROL + amdgpu_crtc->crtc_offset, tmp);
	/* select wm B */
	tmp = FUNC2(wm_mask, DPG_WATERMARK_MASK_CONTROL, URGENCY_WATERMARK_MASK, 2);
	FUNC4(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset, tmp);
	tmp = FUNC3(mmDPG_PIPE_URGENCY_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC2(tmp, DPG_PIPE_URGENCY_CONTROL, URGENCY_LOW_WATERMARK, latency_watermark_b);
	tmp = FUNC2(tmp, DPG_PIPE_URGENCY_CONTROL, URGENCY_HIGH_WATERMARK, line_time);
	FUNC4(mmDPG_PIPE_URGENCY_CONTROL + amdgpu_crtc->crtc_offset, tmp);
	/* restore original selection */
	FUNC4(mmDPG_WATERMARK_MASK_CONTROL + amdgpu_crtc->crtc_offset, wm_mask);

	/* save values for DPM */
	amdgpu_crtc->line_time = line_time;
	amdgpu_crtc->wm_high = latency_watermark_a;
	amdgpu_crtc->wm_low = latency_watermark_b;
	/* Save number of lines the linebuffer leads before the scanout */
	amdgpu_crtc->lb_vblank_lead_lines = lb_vblank_lead_lines;
}