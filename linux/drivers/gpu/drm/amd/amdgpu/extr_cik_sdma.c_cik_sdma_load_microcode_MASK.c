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
struct TYPE_8__ {int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_version; int /*<<< orphan*/  ucode_size_bytes; } ;
struct sdma_firmware_header_v1_0 {TYPE_4__ header; int /*<<< orphan*/  ucode_feature_version; } ;
struct TYPE_7__ {int num_instances; TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_3__ sdma; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {int fw_version; int feature_version; int burst_nop; TYPE_1__* fw; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ mmSDMA0_UCODE_ADDR ; 
 scalar_t__ mmSDMA0_UCODE_DATA ; 
 scalar_t__* sdma_offsets ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	const struct sdma_firmware_header_v1_0 *hdr;
	const __le32 *fw_data;
	u32 fw_size;
	int i, j;

	/* halt the MEs */
	FUNC2(adev, false);

	for (i = 0; i < adev->sdma.num_instances; i++) {
		if (!adev->sdma.instance[i].fw)
			return -EINVAL;
		hdr = (const struct sdma_firmware_header_v1_0 *)adev->sdma.instance[i].fw->data;
		FUNC1(&hdr->header);
		fw_size = FUNC3(hdr->header.ucode_size_bytes) / 4;
		adev->sdma.instance[i].fw_version = FUNC3(hdr->header.ucode_version);
		adev->sdma.instance[i].feature_version = FUNC3(hdr->ucode_feature_version);
		if (adev->sdma.instance[i].feature_version >= 20)
			adev->sdma.instance[i].burst_nop = true;
		fw_data = (const __le32 *)
			(adev->sdma.instance[i].fw->data + FUNC3(hdr->header.ucode_array_offset_bytes));
		FUNC0(mmSDMA0_UCODE_ADDR + sdma_offsets[i], 0);
		for (j = 0; j < fw_size; j++)
			FUNC0(mmSDMA0_UCODE_DATA + sdma_offsets[i], FUNC4(fw_data++));
		FUNC0(mmSDMA0_UCODE_ADDR + sdma_offsets[i], adev->sdma.instance[i].fw_version);
	}

	return 0;
}