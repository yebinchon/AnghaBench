#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct videomode {int hactive; int vactive; int hfront_porch; int hback_porch; int hsync_len; int vfront_porch; int vback_porch; int vsync_len; int flags; } ;
struct ltdc_device {int /*<<< orphan*/  regs; } ;
struct drm_display_mode {int /*<<< orphan*/  name; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_2__ base; TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_3__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 int AWCR_AAH ; 
 int AWCR_AAW ; 
 int BPCR_AHBP ; 
 int BPCR_AVBP ; 
 int DISPLAY_FLAGS_DE_LOW ; 
 int DISPLAY_FLAGS_HSYNC_HIGH ; 
 int DISPLAY_FLAGS_PIXDATA_NEGEDGE ; 
 int DISPLAY_FLAGS_VSYNC_HIGH ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int GCR_DEPOL ; 
 int GCR_HSPOL ; 
 int GCR_PCPOL ; 
 int GCR_VSPOL ; 
 int /*<<< orphan*/  LTDC_AWCR ; 
 int /*<<< orphan*/  LTDC_BPCR ; 
 int /*<<< orphan*/  LTDC_GCR ; 
 int /*<<< orphan*/  LTDC_LIPCR ; 
 int /*<<< orphan*/  LTDC_SSCR ; 
 int /*<<< orphan*/  LTDC_TWCR ; 
 int SSCR_HSW ; 
 int SSCR_VSH ; 
 int TWCR_TOTALH ; 
 int TWCR_TOTALW ; 
 struct ltdc_device* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_display_mode*,struct videomode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct drm_crtc *crtc)
{
	struct ltdc_device *ldev = FUNC2(crtc);
	struct drm_device *ddev = crtc->dev;
	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
	struct videomode vm;
	u32 hsync, vsync, accum_hbp, accum_vbp, accum_act_w, accum_act_h;
	u32 total_width, total_height;
	u32 val;
	int ret;

	if (!FUNC4(ddev->dev)) {
		ret = FUNC5(ddev->dev);
		if (ret) {
			FUNC1("Failed to set mode, cannot get sync\n");
			return;
		}
	}

	FUNC3(mode, &vm);

	FUNC0("CRTC:%d mode:%s\n", crtc->base.id, mode->name);
	FUNC0("Video mode: %dx%d", vm.hactive, vm.vactive);
	FUNC0(" hfp %d hbp %d hsl %d vfp %d vbp %d vsl %d\n",
			 vm.hfront_porch, vm.hback_porch, vm.hsync_len,
			 vm.vfront_porch, vm.vback_porch, vm.vsync_len);

	/* Convert video timings to ltdc timings */
	hsync = vm.hsync_len - 1;
	vsync = vm.vsync_len - 1;
	accum_hbp = hsync + vm.hback_porch;
	accum_vbp = vsync + vm.vback_porch;
	accum_act_w = accum_hbp + vm.hactive;
	accum_act_h = accum_vbp + vm.vactive;
	total_width = accum_act_w + vm.hfront_porch;
	total_height = accum_act_h + vm.vfront_porch;

	/* Configures the HS, VS, DE and PC polarities. Default Active Low */
	val = 0;

	if (vm.flags & DISPLAY_FLAGS_HSYNC_HIGH)
		val |= GCR_HSPOL;

	if (vm.flags & DISPLAY_FLAGS_VSYNC_HIGH)
		val |= GCR_VSPOL;

	if (vm.flags & DISPLAY_FLAGS_DE_LOW)
		val |= GCR_DEPOL;

	if (vm.flags & DISPLAY_FLAGS_PIXDATA_NEGEDGE)
		val |= GCR_PCPOL;

	FUNC6(ldev->regs, LTDC_GCR,
			GCR_HSPOL | GCR_VSPOL | GCR_DEPOL | GCR_PCPOL, val);

	/* Set Synchronization size */
	val = (hsync << 16) | vsync;
	FUNC6(ldev->regs, LTDC_SSCR, SSCR_VSH | SSCR_HSW, val);

	/* Set Accumulated Back porch */
	val = (accum_hbp << 16) | accum_vbp;
	FUNC6(ldev->regs, LTDC_BPCR, BPCR_AVBP | BPCR_AHBP, val);

	/* Set Accumulated Active Width */
	val = (accum_act_w << 16) | accum_act_h;
	FUNC6(ldev->regs, LTDC_AWCR, AWCR_AAW | AWCR_AAH, val);

	/* Set total width & height */
	val = (total_width << 16) | total_height;
	FUNC6(ldev->regs, LTDC_TWCR, TWCR_TOTALH | TWCR_TOTALW, val);

	FUNC7(ldev->regs, LTDC_LIPCR, (accum_act_h + 1));
}