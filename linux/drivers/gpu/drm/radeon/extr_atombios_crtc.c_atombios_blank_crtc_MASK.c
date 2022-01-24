#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct radeon_crtc {size_t crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_5__ {size_t ucCRTC; int ucBlanking; } ;
typedef  TYPE_2__ BLANK_CRTC_PS_ALLOCATION ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  BlankCRTC ; 
 int /*<<< orphan*/  COMMAND ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 struct radeon_crtc* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/ * vga_control_regs ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc, int state)
{
	struct radeon_crtc *radeon_crtc = FUNC6(crtc);
	struct drm_device *dev = crtc->dev;
	struct radeon_device *rdev = dev->dev_private;
	int index = FUNC1(COMMAND, BlankCRTC);
	BLANK_CRTC_PS_ALLOCATION args;
	u32 vga_control = 0;

	FUNC5(&args, 0, sizeof(args));

	if (FUNC0(rdev)) {
		vga_control = FUNC2(vga_control_regs[radeon_crtc->crtc_id]);
		FUNC3(vga_control_regs[radeon_crtc->crtc_id], vga_control | 1);
	}

	args.ucCRTC = radeon_crtc->crtc_id;
	args.ucBlanking = state;

	FUNC4(rdev->mode_info.atom_context, index, (uint32_t *)&args);

	if (FUNC0(rdev)) {
		FUNC3(vga_control_regs[radeon_crtc->crtc_id], vga_control);
	}
}