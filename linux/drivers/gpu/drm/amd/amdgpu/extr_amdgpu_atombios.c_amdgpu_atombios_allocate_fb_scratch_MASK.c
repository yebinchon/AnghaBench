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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u64 ;
struct atom_context {int scratch_size_bytes; int /*<<< orphan*/  scratch; scalar_t__ bios; } ;
struct TYPE_5__ {int start_offset; int size; } ;
struct TYPE_4__ {struct atom_context* atom_context; } ;
struct amdgpu_device {TYPE_2__ fw_vram_usage; TYPE_1__ mode_info; } ;
struct _ATOM_VRAM_USAGE_BY_FIRMWARE {TYPE_3__* asFirmwareVramReserveInfo; } ;
struct TYPE_6__ {int ulStartAddrUsedByFirmware; int usFirmwareUseInKb; } ;

/* Variables and functions */
 int ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION ; 
 int ATOM_VRAM_OPERATION_FLAGS_MASK ; 
 int ATOM_VRAM_OPERATION_FLAGS_SHIFT ; 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VRAM_UsageByFirmware ; 
 scalar_t__ FUNC2 (struct atom_context*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev)
{
	struct atom_context *ctx = adev->mode_info.atom_context;
	int index = FUNC1(DATA, VRAM_UsageByFirmware);
	uint16_t data_offset;
	int usage_bytes = 0;
	struct _ATOM_VRAM_USAGE_BY_FIRMWARE *firmware_usage;
	u64 start_addr;
	u64 size;

	if (FUNC2(ctx, index, NULL, NULL, NULL, &data_offset)) {
		firmware_usage = (struct _ATOM_VRAM_USAGE_BY_FIRMWARE *)(ctx->bios + data_offset);

		FUNC0("atom firmware requested %08x %dkb\n",
			  FUNC5(firmware_usage->asFirmwareVramReserveInfo[0].ulStartAddrUsedByFirmware),
			  FUNC4(firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb));

		start_addr = firmware_usage->asFirmwareVramReserveInfo[0].ulStartAddrUsedByFirmware;
		size = firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb;

		if ((uint32_t)(start_addr & ATOM_VRAM_OPERATION_FLAGS_MASK) ==
			(uint32_t)(ATOM_VRAM_BLOCK_SRIOV_MSG_SHARE_RESERVATION <<
			ATOM_VRAM_OPERATION_FLAGS_SHIFT)) {
			/* Firmware request VRAM reservation for SR-IOV */
			adev->fw_vram_usage.start_offset = (start_addr &
				(~ATOM_VRAM_OPERATION_FLAGS_MASK)) << 10;
			adev->fw_vram_usage.size = size << 10;
			/* Use the default scratch size */
			usage_bytes = 0;
		} else {
			usage_bytes = FUNC4(firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb) * 1024;
		}
	}
	ctx->scratch_size_bytes = 0;
	if (usage_bytes == 0)
		usage_bytes = 20 * 1024;
	/* allocate some scratch memory */
	ctx->scratch = FUNC3(usage_bytes, GFP_KERNEL);
	if (!ctx->scratch)
		return -ENOMEM;
	ctx->scratch_size_bytes = usage_bytes;
	return 0;
}