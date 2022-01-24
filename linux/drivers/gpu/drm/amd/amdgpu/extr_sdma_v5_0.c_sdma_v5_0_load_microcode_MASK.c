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
struct TYPE_8__ {int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_size_bytes; } ;
struct sdma_firmware_header_v1_0 {TYPE_4__ header; } ;
struct TYPE_7__ {int num_instances; TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_3__ sdma; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {int /*<<< orphan*/  fw_version; TYPE_1__* fw; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int amdgpu_emu_mode ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSDMA0_UCODE_ADDR ; 
 int /*<<< orphan*/  mmSDMA0_UCODE_DATA ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	const struct sdma_firmware_header_v1_0 *hdr;
	const __le32 *fw_data;
	u32 fw_size;
	int i, j;

	/* halt the MEs */
	FUNC5(adev, false);

	for (i = 0; i < adev->sdma.num_instances; i++) {
		if (!adev->sdma.instance[i].fw)
			return -EINVAL;

		hdr = (const struct sdma_firmware_header_v1_0 *)adev->sdma.instance[i].fw->data;
		FUNC1(&hdr->header);
		fw_size = FUNC2(hdr->header.ucode_size_bytes) / 4;

		fw_data = (const __le32 *)
			(adev->sdma.instance[i].fw->data +
				FUNC2(hdr->header.ucode_array_offset_bytes));

		FUNC0(FUNC6(adev, i, mmSDMA0_UCODE_ADDR), 0);

		for (j = 0; j < fw_size; j++) {
			if (amdgpu_emu_mode == 1 && j % 500 == 0)
				FUNC4(1);
			FUNC0(FUNC6(adev, i, mmSDMA0_UCODE_DATA), FUNC3(fw_data++));
		}

		FUNC0(FUNC6(adev, i, mmSDMA0_UCODE_ADDR), adev->sdma.instance[i].fw_version);
	}

	return 0;
}