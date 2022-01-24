#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {int rptr; int ptr_mask; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ring; int /*<<< orphan*/  enabled; } ;
struct TYPE_8__ {int high_to_low; int /*<<< orphan*/  work; } ;
struct TYPE_9__ {TYPE_1__ thermal; } ;
struct TYPE_14__ {int vblank_sync; TYPE_2__ dpm; scalar_t__ dpm_enabled; } ;
struct TYPE_11__ {int disp_int; int disp_int_cont; int disp_int_cont2; int hdmi0_status; int hdmi1_status; } ;
struct TYPE_12__ {TYPE_4__ r600; } ;
struct TYPE_13__ {TYPE_5__ stat_regs; int /*<<< orphan*/ * pflip; int /*<<< orphan*/  vblank_queue; int /*<<< orphan*/ * crtc_vblank_int; } ;
struct radeon_device {TYPE_3__ ih; TYPE_7__ pm; int /*<<< orphan*/  audio_work; int /*<<< orphan*/  hotplug_work; TYPE_6__ irq; int /*<<< orphan*/  ddev; int /*<<< orphan*/  msi_enabled; scalar_t__ shutdown; } ;

/* Variables and functions */
 int DC_HPD1_INTERRUPT ; 
 int DC_HPD2_INTERRUPT ; 
 int DC_HPD3_INTERRUPT ; 
 int DC_HPD4_INTERRUPT ; 
 int DC_HPD5_INTERRUPT ; 
 int DC_HPD6_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int HDMI0_AZ_FORMAT_WTRIG ; 
 int /*<<< orphan*/  IH_RB_RPTR ; 
 int /*<<< orphan*/  IH_RB_WPTR ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int LB_D1_VBLANK_INTERRUPT ; 
 int LB_D1_VLINE_INTERRUPT ; 
 int LB_D2_VBLANK_INTERRUPT ; 
 int LB_D2_VLINE_INTERRUPT ; 
 int /*<<< orphan*/  R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_RING_TYPE_UVD_INDEX ; 
 int /*<<< orphan*/  RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_use_pflipirq ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct radeon_device *rdev)
{
	u32 wptr;
	u32 rptr;
	u32 src_id, src_data;
	u32 ring_index;
	bool queue_hotplug = false;
	bool queue_hdmi = false;
	bool queue_thermal = false;

	if (!rdev->ih.enabled || rdev->shutdown)
		return IRQ_NONE;

	/* No MSIs, need a dummy read to flush PCI DMAs */
	if (!rdev->msi_enabled)
		FUNC2(IH_RB_WPTR);

	wptr = FUNC9(rdev);

restart_ih:
	/* is somebody else already processing irqs? */
	if (FUNC6(&rdev->ih.lock, 1))
		return IRQ_NONE;

	rptr = rdev->ih.rptr;
	FUNC0("r600_irq_process start: rptr %d, wptr %d\n", rptr, wptr);

	/* Order reading of wptr vs. reading of IH ring data */
	FUNC14();

	/* display interrupts */
	FUNC10(rdev);

	while (rptr != wptr) {
		/* wptr/rptr are in bytes! */
		ring_index = rptr / 4;
		src_id = FUNC8(rdev->ih.ring[ring_index]) & 0xff;
		src_data = FUNC8(rdev->ih.ring[ring_index + 1]) & 0xfffffff;

		switch (src_id) {
		case 1: /* D1 vblank/vline */
			switch (src_data) {
			case 0: /* D1 vblank */
				if (!(rdev->irq.stat_regs.r600.disp_int & LB_D1_VBLANK_INTERRUPT))
					FUNC0("IH: D1 vblank - IH event w/o asserted irq bit?\n");

				if (rdev->irq.crtc_vblank_int[0]) {
					FUNC7(rdev->ddev, 0);
					rdev->pm.vblank_sync = true;
					FUNC17(&rdev->irq.vblank_queue);
				}
				if (FUNC4(&rdev->irq.pflip[0]))
					FUNC12(rdev, 0);
				rdev->irq.stat_regs.r600.disp_int &= ~LB_D1_VBLANK_INTERRUPT;
				FUNC0("IH: D1 vblank\n");

				break;
			case 1: /* D1 vline */
				if (!(rdev->irq.stat_regs.r600.disp_int & LB_D1_VLINE_INTERRUPT))
				    FUNC0("IH: D1 vline - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.disp_int &= ~LB_D1_VLINE_INTERRUPT;
				FUNC0("IH: D1 vline\n");

				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 5: /* D2 vblank/vline */
			switch (src_data) {
			case 0: /* D2 vblank */
				if (!(rdev->irq.stat_regs.r600.disp_int & LB_D2_VBLANK_INTERRUPT))
					FUNC0("IH: D2 vblank - IH event w/o asserted irq bit?\n");

				if (rdev->irq.crtc_vblank_int[1]) {
					FUNC7(rdev->ddev, 1);
					rdev->pm.vblank_sync = true;
					FUNC17(&rdev->irq.vblank_queue);
				}
				if (FUNC4(&rdev->irq.pflip[1]))
					FUNC12(rdev, 1);
				rdev->irq.stat_regs.r600.disp_int &= ~LB_D2_VBLANK_INTERRUPT;
				FUNC0("IH: D2 vblank\n");

				break;
			case 1: /* D1 vline */
				if (!(rdev->irq.stat_regs.r600.disp_int & LB_D2_VLINE_INTERRUPT))
					FUNC0("IH: D2 vline - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.disp_int &= ~LB_D2_VLINE_INTERRUPT;
				FUNC0("IH: D2 vline\n");

				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 9: /* D1 pflip */
			FUNC0("IH: D1 flip\n");
			if (radeon_use_pflipirq > 0)
				FUNC11(rdev, 0);
			break;
		case 11: /* D2 pflip */
			FUNC0("IH: D2 flip\n");
			if (radeon_use_pflipirq > 0)
				FUNC11(rdev, 1);
			break;
		case 19: /* HPD/DAC hotplug */
			switch (src_data) {
			case 0:
				if (!(rdev->irq.stat_regs.r600.disp_int & DC_HPD1_INTERRUPT))
					FUNC0("IH: HPD1 - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.disp_int &= ~DC_HPD1_INTERRUPT;
				queue_hotplug = true;
				FUNC0("IH: HPD1\n");
				break;
			case 1:
				if (!(rdev->irq.stat_regs.r600.disp_int & DC_HPD2_INTERRUPT))
					FUNC0("IH: HPD2 - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.disp_int &= ~DC_HPD2_INTERRUPT;
				queue_hotplug = true;
				FUNC0("IH: HPD2\n");
				break;
			case 4:
				if (!(rdev->irq.stat_regs.r600.disp_int_cont & DC_HPD3_INTERRUPT))
					FUNC0("IH: HPD3 - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.disp_int_cont &= ~DC_HPD3_INTERRUPT;
				queue_hotplug = true;
				FUNC0("IH: HPD3\n");
				break;
			case 5:
				if (!(rdev->irq.stat_regs.r600.disp_int_cont & DC_HPD4_INTERRUPT))
					FUNC0("IH: HPD4 - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.disp_int_cont &= ~DC_HPD4_INTERRUPT;
				queue_hotplug = true;
				FUNC0("IH: HPD4\n");
				break;
			case 10:
				if (!(rdev->irq.stat_regs.r600.disp_int_cont2 & DC_HPD5_INTERRUPT))
					FUNC0("IH: HPD5 - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.disp_int_cont2 &= ~DC_HPD5_INTERRUPT;
				queue_hotplug = true;
				FUNC0("IH: HPD5\n");
				break;
			case 12:
				if (!(rdev->irq.stat_regs.r600.disp_int_cont2 & DC_HPD6_INTERRUPT))
					FUNC0("IH: HPD6 - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.disp_int_cont2 &= ~DC_HPD6_INTERRUPT;
				queue_hotplug = true;
				FUNC0("IH: HPD6\n");

				break;
			default:
				FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 21: /* hdmi */
			switch (src_data) {
			case 4:
				if (!(rdev->irq.stat_regs.r600.hdmi0_status & HDMI0_AZ_FORMAT_WTRIG))
					FUNC0("IH: HDMI0 - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.hdmi0_status &= ~HDMI0_AZ_FORMAT_WTRIG;
				queue_hdmi = true;
				FUNC0("IH: HDMI0\n");

				break;
			case 5:
				if (!(rdev->irq.stat_regs.r600.hdmi1_status & HDMI0_AZ_FORMAT_WTRIG))
					FUNC0("IH: HDMI1 - IH event w/o asserted irq bit?\n");

				rdev->irq.stat_regs.r600.hdmi1_status &= ~HDMI0_AZ_FORMAT_WTRIG;
				queue_hdmi = true;
				FUNC0("IH: HDMI1\n");

				break;
			default:
				FUNC1("Unhandled interrupt: %d %d\n", src_id, src_data);
				break;
			}
			break;
		case 124: /* UVD */
			FUNC0("IH: UVD int: 0x%08x\n", src_data);
			FUNC13(rdev, R600_RING_TYPE_UVD_INDEX);
			break;
		case 176: /* CP_INT in ring buffer */
		case 177: /* CP_INT in IB1 */
		case 178: /* CP_INT in IB2 */
			FUNC0("IH: CP int: 0x%08x\n", src_data);
			FUNC13(rdev, RADEON_RING_TYPE_GFX_INDEX);
			break;
		case 181: /* CP EOP event */
			FUNC0("IH: CP EOP\n");
			FUNC13(rdev, RADEON_RING_TYPE_GFX_INDEX);
			break;
		case 224: /* DMA trap event */
			FUNC0("IH: DMA trap\n");
			FUNC13(rdev, R600_RING_TYPE_DMA_INDEX);
			break;
		case 230: /* thermal low to high */
			FUNC0("IH: thermal low to high\n");
			rdev->pm.dpm.thermal.high_to_low = false;
			queue_thermal = true;
			break;
		case 231: /* thermal high to low */
			FUNC0("IH: thermal high to low\n");
			rdev->pm.dpm.thermal.high_to_low = true;
			queue_thermal = true;
			break;
		case 233: /* GUI IDLE */
			FUNC0("IH: GUI idle\n");
			break;
		default:
			FUNC0("Unhandled interrupt: %d %d\n", src_id, src_data);
			break;
		}

		/* wptr/rptr are in bytes! */
		rptr += 16;
		rptr &= rdev->ih.ptr_mask;
		FUNC3(IH_RB_RPTR, rptr);
	}
	if (queue_hotplug)
		FUNC15(&rdev->hotplug_work, 0);
	if (queue_hdmi)
		FUNC16(&rdev->audio_work);
	if (queue_thermal && rdev->pm.dpm_enabled)
		FUNC16(&rdev->pm.dpm.thermal.work);
	rdev->ih.rptr = rptr;
	FUNC5(&rdev->ih.lock, 0);

	/* make sure wptr hasn't changed while processing */
	wptr = FUNC9(rdev);
	if (wptr != rptr)
		goto restart_ih;

	return IRQ_HANDLED;
}