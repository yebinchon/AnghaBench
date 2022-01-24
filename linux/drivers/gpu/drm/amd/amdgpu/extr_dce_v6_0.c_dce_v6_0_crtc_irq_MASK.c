#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct amdgpu_iv_entry {int src_id; int* src_data; } ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int /*<<< orphan*/  ddev; } ;
struct TYPE_2__ {int vblank; int vline; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VBLANK_ACK ; 
 int /*<<< orphan*/  VLINE_ACK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct amdgpu_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int) ; 
 scalar_t__* crtc_offsets ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* interrupt_status_offsets ; 
 scalar_t__ mmVBLANK_STATUS ; 
 scalar_t__ mmVLINE_STATUS ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev,
			     struct amdgpu_irq_src *source,
			     struct amdgpu_iv_entry *entry)
{
	unsigned crtc = entry->src_id - 1;
	uint32_t disp_int = FUNC1(interrupt_status_offsets[crtc].reg);
	unsigned int irq_type = FUNC3(adev,
								    crtc);

	switch (entry->src_data[0]) {
	case 0: /* vblank */
		if (disp_int & interrupt_status_offsets[crtc].vblank)
			FUNC2(mmVBLANK_STATUS + crtc_offsets[crtc], VBLANK_ACK);
		else
			FUNC0("IH: IH event w/o asserted irq bit?\n");

		if (FUNC4(adev, source, irq_type)) {
			FUNC5(adev->ddev, crtc);
		}
		FUNC0("IH: D%d vblank\n", crtc + 1);
		break;
	case 1: /* vline */
		if (disp_int & interrupt_status_offsets[crtc].vline)
			FUNC2(mmVLINE_STATUS + crtc_offsets[crtc], VLINE_ACK);
		else
			FUNC0("IH: IH event w/o asserted irq bit?\n");

		FUNC0("IH: D%d vline\n", crtc + 1);
		break;
	default:
		FUNC0("Unhandled interrupt: %d %d\n", entry->src_id, entry->src_data[0]);
		break;
	}

	return 0;
}