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
struct TYPE_14__ {int high_to_low; int /*<<< orphan*/  work; } ;
struct TYPE_12__ {TYPE_7__ thermal; } ;
struct TYPE_13__ {int vblank_sync; TYPE_5__ dpm; scalar_t__ dpm_enabled; } ;
struct TYPE_8__ {int* disp_int; int* afmt_status; } ;
struct TYPE_9__ {TYPE_1__ evergreen; } ;
struct TYPE_11__ {int /*<<< orphan*/ * pflip; int /*<<< orphan*/  vblank_queue; int /*<<< orphan*/ * crtc_vblank_int; TYPE_2__ stat_regs; } ;
struct radeon_device {TYPE_3__ ih; TYPE_6__ pm; int /*<<< orphan*/  audio_work; int /*<<< orphan*/  hotplug_work; int /*<<< orphan*/  dp_work; int /*<<< orphan*/  family; int /*<<< orphan*/  dev; TYPE_4__ irq; int /*<<< orphan*/  ddev; scalar_t__ shutdown; } ;

/* Variables and functions */
 int AFMT_AZ_FORMAT_WTRIG ; 
 int /*<<< orphan*/  CAYMAN_RING_TYPE_CP1_INDEX ; 
 int /*<<< orphan*/  CAYMAN_RING_TYPE_CP2_INDEX ; 
 int /*<<< orphan*/  CAYMAN_RING_TYPE_DMA1_INDEX ; 
 int /*<<< orphan*/  CHIP_CAYMAN ; 
 int DC_HPD1_INTERRUPT ; 
 int DC_HPD1_RX_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  IH_RB_RPTR ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int LB_D1_VBLANK_INTERRUPT ; 
 int LB_D1_VLINE_INTERRUPT ; 
 int /*<<< orphan*/  R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_RING_TYPE_UVD_INDEX ; 
 int /*<<< orphan*/  RADEON_RING_TYPE_GFX_INDEX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRBM_INT_ACK ; 
 int /*<<< orphan*/  SRBM_READ_ERROR ; 
 int /*<<< orphan*/  VM_CONTEXT1_CNTL2 ; 
 int /*<<< orphan*/  VM_CONTEXT1_PROTECTION_FAULT_ADDR ; 
 int /*<<< orphan*/  VM_CONTEXT1_PROTECTION_FAULT_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_use_pflipirq ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct radeon_device *rdev)
{
	u32 *disp_int = rdev->irq.stat_regs.evergreen.disp_int;
	u32 *afmt_status = rdev->irq.stat_regs.evergreen.afmt_status;
	u32 crtc_idx, hpd_idx, afmt_idx;
	u32 mask;
	u32 wptr;
	u32 rptr;
	u32 src_id, src_data;
	u32 ring_index;
	bool queue_hotplug = false;
	bool queue_hdmi = false;
	bool queue_dp = false;
	bool queue_thermal = false;
	u32 status, addr;
	const char *event_name;

	if (!rdev->ih.enabled || rdev->shutdown)
		return IRQ_NONE;

	wptr = FUNC11(rdev);

restart_ih:
	/* is somebody else already processing irqs? */
	if (FUNC7(&rdev->ih.lock, 1))
		return IRQ_NONE;

	rptr = rdev->ih.rptr;
	FUNC0("evergreen_irq_process start: rptr %d, wptr %d\n", rptr, wptr);

	/* Order reading of wptr vs. reading of IH ring data */
	FUNC17();

	/* display interrupts */
	FUNC12(rdev);

	while (rptr != wptr) {
		/* wptr/rptr are in bytes! */
		ring_index = rptr / 4;
		src_id =  FUNC13(rdev->ih.ring[ring_index]) & 0xff;
		src_data = FUNC13(rdev->ih.ring[ring_index + 1]) & 0xfffffff;

		switch (src_id) {
		case 1: /* D1 vblank/vline */
		case 2: /* D2 vblank/vline */
		case 3: /* D3 vblank/vline */
		case 4: /* D4 vblank/vline */
		case 5: /* D5 vblank/vline */
		case 6: /* D6 vblank/vline */
			crtc_idx = src_id - 1;

			if (src_data == 0) { /* vblank */
				mask = LB_D1_VBLANK_INTERRUPT;
				event_name = "vblank";

				if (rdev->irq.crtc_vblank_int[crtc_idx]) {
					FUNC10(rdev->ddev, crtc_idx);
					rdev->pm.vblank_sync = true;
					FUNC20(&rdev->irq.vblank_queue);
				}
				if (FUNC5(&rdev->irq.pflip[crtc_idx])) {
					FUNC15(rdev,
								  crtc_idx);
				}

			} else if (src_data == 1) { /* vline */
				mask = LB_D1_VLINE_INTERRUPT;
				event_name = "vline";
			} else {
				FUNC0("Unhandled interrupt: %d %d\n",
					  src_id, src_data);
				break;
			}

			if (!(disp_int[crtc_idx] & mask)) {
				FUNC0("IH: D%d %s - IH event w/o asserted irq bit?\n",
					  crtc_idx + 1, event_name);
			}

			disp_int[crtc_idx] &= ~mask;
			FUNC0("IH: D%d %s\n", crtc_idx + 1, event_name);

			break;
		case 8: /* D1 page flip */
		case 10: /* D2 page flip */
		case 12: /* D3 page flip */
		case 14: /* D4 page flip */
		case 16: /* D5 page flip */
		case 18: /* D6 page flip */
			FUNC0("IH: D%d flip\n", ((src_id - 8) >> 1) + 1);
			if (radeon_use_pflipirq > 0)
				FUNC14(rdev, (src_id - 8) >> 1);
			break;
		case 42: /* HPD hotplug */
			if (src_data <= 5) {
				hpd_idx = src_data;
				mask = DC_HPD1_INTERRUPT;
				queue_hotplug = true;
				event_name = "HPD";

			} else if (src_data <= 11) {
				hpd_idx = src_data - 6;
				mask = DC_HPD1_RX_INTERRUPT;
				queue_dp = true;
				event_name = "HPD_RX";

			} else {
				FUNC0("Unhandled interrupt: %d %d\n",
					  src_id, src_data);
				break;
			}

			if (!(disp_int[hpd_idx] & mask))
				FUNC0("IH: IH event w/o asserted irq bit?\n");

			disp_int[hpd_idx] &= ~mask;
			FUNC0("IH: %s%d\n", event_name, hpd_idx + 1);

			break;
		case 44: /* hdmi */
			afmt_idx = src_data;
			if (!(afmt_status[afmt_idx] & AFMT_AZ_FORMAT_WTRIG))
				FUNC0("IH: IH event w/o asserted irq bit?\n");

			if (afmt_idx > 5) {
				FUNC1("Unhandled interrupt: %d %d\n",
					  src_id, src_data);
				break;
			}
			afmt_status[afmt_idx] &= ~AFMT_AZ_FORMAT_WTRIG;
			queue_hdmi = true;
			FUNC0("IH: HDMI%d\n", afmt_idx + 1);
			break;
		case 96:
			FUNC1("SRBM_READ_ERROR: 0x%x\n", FUNC2(SRBM_READ_ERROR));
			FUNC3(SRBM_INT_ACK, 0x1);
			break;
		case 124: /* UVD */
			FUNC0("IH: UVD int: 0x%08x\n", src_data);
			FUNC16(rdev, R600_RING_TYPE_UVD_INDEX);
			break;
		case 146:
		case 147:
			addr = FUNC2(VM_CONTEXT1_PROTECTION_FAULT_ADDR);
			status = FUNC2(VM_CONTEXT1_PROTECTION_FAULT_STATUS);
			/* reset addr and status */
			FUNC4(VM_CONTEXT1_CNTL2, 1, ~1);
			if (addr == 0x0 && status == 0x0)
				break;
			FUNC9(rdev->dev, "GPU fault detected: %d 0x%08x\n", src_id, src_data);
			FUNC9(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_ADDR   0x%08X\n",
				addr);
			FUNC9(rdev->dev, "  VM_CONTEXT1_PROTECTION_FAULT_STATUS 0x%08X\n",
				status);
			FUNC8(rdev, status, addr);
			break;
		case 176: /* CP_INT in ring buffer */
		case 177: /* CP_INT in IB1 */
		case 178: /* CP_INT in IB2 */
			FUNC0("IH: CP int: 0x%08x\n", src_data);
			FUNC16(rdev, RADEON_RING_TYPE_GFX_INDEX);
			break;
		case 181: /* CP EOP event */
			FUNC0("IH: CP EOP\n");
			if (rdev->family >= CHIP_CAYMAN) {
				switch (src_data) {
				case 0:
					FUNC16(rdev, RADEON_RING_TYPE_GFX_INDEX);
					break;
				case 1:
					FUNC16(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
					break;
				case 2:
					FUNC16(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
					break;
				}
			} else
				FUNC16(rdev, RADEON_RING_TYPE_GFX_INDEX);
			break;
		case 224: /* DMA trap event */
			FUNC0("IH: DMA trap\n");
			FUNC16(rdev, R600_RING_TYPE_DMA_INDEX);
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
		case 244: /* DMA trap event */
			if (rdev->family >= CHIP_CAYMAN) {
				FUNC0("IH: DMA1 trap\n");
				FUNC16(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
			}
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
	if (queue_dp)
		FUNC19(&rdev->dp_work);
	if (queue_hotplug)
		FUNC18(&rdev->hotplug_work, 0);
	if (queue_hdmi)
		FUNC19(&rdev->audio_work);
	if (queue_thermal && rdev->pm.dpm_enabled)
		FUNC19(&rdev->pm.dpm.thermal.work);
	rdev->ih.rptr = rptr;
	FUNC6(&rdev->ih.lock, 0);

	/* make sure wptr hasn't changed while processing */
	wptr = FUNC11(rdev);
	if (wptr != rptr)
		goto restart_ih;

	return IRQ_HANDLED;
}