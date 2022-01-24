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
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_version; } ;
struct mc_firmware_header_v1_0 {TYPE_3__ header; int /*<<< orphan*/  io_debug_array_offset_bytes; int /*<<< orphan*/  io_debug_size_bytes; } ;
struct TYPE_5__ {int fw_version; TYPE_1__* fw; } ;
struct amdgpu_device {int usec_timeout; TYPE_2__ gmc; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int MC_SEQ_SUP_CNTL__RUN_MASK ; 
 int MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D0_MASK ; 
 int MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D1_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMC_SEQ_IO_DEBUG_DATA ; 
 int /*<<< orphan*/  mmMC_SEQ_IO_DEBUG_INDEX ; 
 int /*<<< orphan*/  mmMC_SEQ_SUP_CNTL ; 
 int /*<<< orphan*/  mmMC_SEQ_SUP_PGM ; 
 int /*<<< orphan*/  mmMC_SEQ_TRAIN_WAKEUP_CNTL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev)
{
	const __le32 *new_fw_data = NULL;
	u32 running;
	const __le32 *new_io_mc_regs = NULL;
	int i, regs_size, ucode_size;
	const struct mc_firmware_header_v1_0 *hdr;

	if (!adev->gmc.fw)
		return -EINVAL;

	hdr = (const struct mc_firmware_header_v1_0 *)adev->gmc.fw->data;

	FUNC2(&hdr->header);

	adev->gmc.fw_version = FUNC3(hdr->header.ucode_version);
	regs_size = FUNC3(hdr->io_debug_size_bytes) / (4 * 2);
	new_io_mc_regs = (const __le32 *)
		(adev->gmc.fw->data + FUNC3(hdr->io_debug_array_offset_bytes));
	ucode_size = FUNC3(hdr->header.ucode_size_bytes) / 4;
	new_fw_data = (const __le32 *)
		(adev->gmc.fw->data + FUNC3(hdr->header.ucode_array_offset_bytes));

	running = FUNC0(mmMC_SEQ_SUP_CNTL) & MC_SEQ_SUP_CNTL__RUN_MASK;

	if (running == 0) {

		/* reset the engine and set to writable */
		FUNC1(mmMC_SEQ_SUP_CNTL, 0x00000008);
		FUNC1(mmMC_SEQ_SUP_CNTL, 0x00000010);

		/* load mc io regs */
		for (i = 0; i < regs_size; i++) {
			FUNC1(mmMC_SEQ_IO_DEBUG_INDEX, FUNC4(new_io_mc_regs++));
			FUNC1(mmMC_SEQ_IO_DEBUG_DATA, FUNC4(new_io_mc_regs++));
		}
		/* load the MC ucode */
		for (i = 0; i < ucode_size; i++) {
			FUNC1(mmMC_SEQ_SUP_PGM, FUNC4(new_fw_data++));
		}

		/* put the engine back into the active state */
		FUNC1(mmMC_SEQ_SUP_CNTL, 0x00000008);
		FUNC1(mmMC_SEQ_SUP_CNTL, 0x00000004);
		FUNC1(mmMC_SEQ_SUP_CNTL, 0x00000001);

		/* wait for training to complete */
		for (i = 0; i < adev->usec_timeout; i++) {
			if (FUNC0(mmMC_SEQ_TRAIN_WAKEUP_CNTL) & MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D0_MASK)
				break;
			FUNC5(1);
		}
		for (i = 0; i < adev->usec_timeout; i++) {
			if (FUNC0(mmMC_SEQ_TRAIN_WAKEUP_CNTL) & MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D1_MASK)
				break;
			FUNC5(1);
		}

	}

	return 0;
}