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
struct radeon_device {int family; int usec_timeout; scalar_t__ new_fw; TYPE_2__* pdev; TYPE_1__* mc_fw; } ;
struct TYPE_6__ {int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_size_bytes; } ;
struct mc_firmware_header_v1_0 {TYPE_3__ header; int /*<<< orphan*/  io_debug_array_offset_bytes; int /*<<< orphan*/  io_debug_size_bytes; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_5__ {int device; } ;
struct TYPE_4__ {int size; scalar_t__ data; } ;

/* Variables and functions */
 int BONAIRE_IO_MC_REGS_SIZE ; 
#define  CHIP_BONAIRE 129 
#define  CHIP_HAWAII 128 
 int EINVAL ; 
 int HAWAII_IO_MC_REGS_SIZE ; 
 int /*<<< orphan*/  MC_SEQ_IO_DEBUG_DATA ; 
 int /*<<< orphan*/  MC_SEQ_IO_DEBUG_INDEX ; 
 int /*<<< orphan*/  MC_SEQ_MISC0 ; 
 int /*<<< orphan*/  MC_SEQ_SUP_CNTL ; 
 int /*<<< orphan*/  MC_SEQ_SUP_PGM ; 
 int /*<<< orphan*/  MC_SEQ_TRAIN_WAKEUP_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RUN_MASK ; 
 int TRAIN_DONE_D0 ; 
 int TRAIN_DONE_D1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bonaire_io_mc_regs ; 
 int /*<<< orphan*/  hawaii_io_mc_regs ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(struct radeon_device *rdev)
{
	const __be32 *fw_data = NULL;
	const __le32 *new_fw_data = NULL;
	u32 running, tmp;
	u32 *io_mc_regs = NULL;
	const __le32 *new_io_mc_regs = NULL;
	int i, regs_size, ucode_size;

	if (!rdev->mc_fw)
		return -EINVAL;

	if (rdev->new_fw) {
		const struct mc_firmware_header_v1_0 *hdr =
			(const struct mc_firmware_header_v1_0 *)rdev->mc_fw->data;

		FUNC5(&hdr->header);

		regs_size = FUNC3(hdr->io_debug_size_bytes) / (4 * 2);
		new_io_mc_regs = (const __le32 *)
			(rdev->mc_fw->data + FUNC3(hdr->io_debug_array_offset_bytes));
		ucode_size = FUNC3(hdr->header.ucode_size_bytes) / 4;
		new_fw_data = (const __le32 *)
			(rdev->mc_fw->data + FUNC3(hdr->header.ucode_array_offset_bytes));
	} else {
		ucode_size = rdev->mc_fw->size / 4;

		switch (rdev->family) {
		case CHIP_BONAIRE:
			io_mc_regs = (u32 *)&bonaire_io_mc_regs;
			regs_size = BONAIRE_IO_MC_REGS_SIZE;
			break;
		case CHIP_HAWAII:
			io_mc_regs = (u32 *)&hawaii_io_mc_regs;
			regs_size = HAWAII_IO_MC_REGS_SIZE;
			break;
		default:
			return -EINVAL;
		}
		fw_data = (const __be32 *)rdev->mc_fw->data;
	}

	running = FUNC0(MC_SEQ_SUP_CNTL) & RUN_MASK;

	if (running == 0) {
		/* reset the engine and set to writable */
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000008);
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000010);

		/* load mc io regs */
		for (i = 0; i < regs_size; i++) {
			if (rdev->new_fw) {
				FUNC1(MC_SEQ_IO_DEBUG_INDEX, FUNC4(new_io_mc_regs++));
				FUNC1(MC_SEQ_IO_DEBUG_DATA, FUNC4(new_io_mc_regs++));
			} else {
				FUNC1(MC_SEQ_IO_DEBUG_INDEX, io_mc_regs[(i << 1)]);
				FUNC1(MC_SEQ_IO_DEBUG_DATA, io_mc_regs[(i << 1) + 1]);
			}
		}

		tmp = FUNC0(MC_SEQ_MISC0);
		if ((rdev->pdev->device == 0x6649) && ((tmp & 0xff00) == 0x5600)) {
			FUNC1(MC_SEQ_IO_DEBUG_INDEX, 5);
			FUNC1(MC_SEQ_IO_DEBUG_DATA, 0x00000023);
			FUNC1(MC_SEQ_IO_DEBUG_INDEX, 9);
			FUNC1(MC_SEQ_IO_DEBUG_DATA, 0x000001f0);
		}

		/* load the MC ucode */
		for (i = 0; i < ucode_size; i++) {
			if (rdev->new_fw)
				FUNC1(MC_SEQ_SUP_PGM, FUNC4(new_fw_data++));
			else
				FUNC1(MC_SEQ_SUP_PGM, FUNC2(fw_data++));
		}

		/* put the engine back into the active state */
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000008);
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000004);
		FUNC1(MC_SEQ_SUP_CNTL, 0x00000001);

		/* wait for training to complete */
		for (i = 0; i < rdev->usec_timeout; i++) {
			if (FUNC0(MC_SEQ_TRAIN_WAKEUP_CNTL) & TRAIN_DONE_D0)
				break;
			FUNC6(1);
		}
		for (i = 0; i < rdev->usec_timeout; i++) {
			if (FUNC0(MC_SEQ_TRAIN_WAKEUP_CNTL) & TRAIN_DONE_D1)
				break;
			FUNC6(1);
		}
	}

	return 0;
}