#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {scalar_t__ hdmi0_status; scalar_t__ disp_int; } ;
struct TYPE_7__ {TYPE_2__ r500; } ;
struct TYPE_8__ {TYPE_3__ stat_regs; int /*<<< orphan*/ * pflip; int /*<<< orphan*/  vblank_queue; scalar_t__* crtc_vblank_int; } ;
struct TYPE_5__ {int vblank_sync; } ;
struct radeon_device {int family; scalar_t__ msi_enabled; int /*<<< orphan*/  audio_work; int /*<<< orphan*/  hotplug_work; TYPE_4__ irq; TYPE_1__ pm; int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
#define  CHIP_RS600 130 
#define  CHIP_RS690 129 
#define  CHIP_RS740 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  RADEON_BUS_CNTL ; 
 int /*<<< orphan*/  RADEON_MSI_REARM_EN ; 
 int /*<<< orphan*/  RADEON_RING_TYPE_GFX_INDEX ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int RS600_MSI_REARM ; 
 int RV370_MSI_REARM_EN ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct radeon_device *rdev)
{
	u32 status, msi_rearm;
	bool queue_hotplug = false;
	bool queue_hdmi = false;

	status = FUNC13(rdev);
	if (!status &&
	    !rdev->irq.stat_regs.r500.disp_int &&
	    !rdev->irq.stat_regs.r500.hdmi0_status) {
		return IRQ_NONE;
	}
	while (status ||
	       rdev->irq.stat_regs.r500.disp_int ||
	       rdev->irq.stat_regs.r500.hdmi0_status) {
		/* SW interrupt */
		if (FUNC1(status)) {
			FUNC12(rdev, RADEON_RING_TYPE_GFX_INDEX);
		}
		/* Vertical blank interrupts */
		if (FUNC5(rdev->irq.stat_regs.r500.disp_int)) {
			if (rdev->irq.crtc_vblank_int[0]) {
				FUNC10(rdev->ddev, 0);
				rdev->pm.vblank_sync = true;
				FUNC16(&rdev->irq.vblank_queue);
			}
			if (FUNC9(&rdev->irq.pflip[0]))
				FUNC11(rdev, 0);
		}
		if (FUNC6(rdev->irq.stat_regs.r500.disp_int)) {
			if (rdev->irq.crtc_vblank_int[1]) {
				FUNC10(rdev->ddev, 1);
				rdev->pm.vblank_sync = true;
				FUNC16(&rdev->irq.vblank_queue);
			}
			if (FUNC9(&rdev->irq.pflip[1]))
				FUNC11(rdev, 1);
		}
		if (FUNC3(rdev->irq.stat_regs.r500.disp_int)) {
			queue_hotplug = true;
			FUNC0("HPD1\n");
		}
		if (FUNC4(rdev->irq.stat_regs.r500.disp_int)) {
			queue_hotplug = true;
			FUNC0("HPD2\n");
		}
		if (FUNC2(rdev->irq.stat_regs.r500.hdmi0_status)) {
			queue_hdmi = true;
			FUNC0("HDMI0\n");
		}
		status = FUNC13(rdev);
	}
	if (queue_hotplug)
		FUNC14(&rdev->hotplug_work, 0);
	if (queue_hdmi)
		FUNC15(&rdev->audio_work);
	if (rdev->msi_enabled) {
		switch (rdev->family) {
		case CHIP_RS600:
		case CHIP_RS690:
		case CHIP_RS740:
			msi_rearm = FUNC7(RADEON_BUS_CNTL) & ~RS600_MSI_REARM;
			FUNC8(RADEON_BUS_CNTL, msi_rearm);
			FUNC8(RADEON_BUS_CNTL, msi_rearm | RS600_MSI_REARM);
			break;
		default:
			FUNC8(RADEON_MSI_REARM_EN, RV370_MSI_REARM_EN);
			break;
		}
	}
	return IRQ_HANDLED;
}