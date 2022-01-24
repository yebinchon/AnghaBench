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
struct TYPE_8__ {int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_version; } ;
struct gfx_firmware_header_v1_0 {TYPE_4__ header; int /*<<< orphan*/  ucode_feature_version; } ;
struct TYPE_7__ {int mec_fw_version; int mec_feature_version; int mec2_fw_version; int mec2_feature_version; TYPE_2__* mec2_fw; TYPE_1__* mec_fw; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gfx; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ CHIP_KAVERI ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCP_MEC_ME1_UCODE_ADDR ; 
 int /*<<< orphan*/  mmCP_MEC_ME1_UCODE_DATA ; 
 int /*<<< orphan*/  mmCP_MEC_ME2_UCODE_ADDR ; 
 int /*<<< orphan*/  mmCP_MEC_ME2_UCODE_DATA ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	const struct gfx_firmware_header_v1_0 *mec_hdr;
	const __le32 *fw_data;
	unsigned i, fw_size;

	if (!adev->gfx.mec_fw)
		return -EINVAL;

	mec_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
	FUNC1(&mec_hdr->header);
	adev->gfx.mec_fw_version = FUNC3(mec_hdr->header.ucode_version);
	adev->gfx.mec_feature_version = FUNC3(
					mec_hdr->ucode_feature_version);

	FUNC2(adev, false);

	/* MEC1 */
	fw_data = (const __le32 *)
		(adev->gfx.mec_fw->data +
		 FUNC3(mec_hdr->header.ucode_array_offset_bytes));
	fw_size = FUNC3(mec_hdr->header.ucode_size_bytes) / 4;
	FUNC0(mmCP_MEC_ME1_UCODE_ADDR, 0);
	for (i = 0; i < fw_size; i++)
		FUNC0(mmCP_MEC_ME1_UCODE_DATA, FUNC4(fw_data++));
	FUNC0(mmCP_MEC_ME1_UCODE_ADDR, 0);

	if (adev->asic_type == CHIP_KAVERI) {
		const struct gfx_firmware_header_v1_0 *mec2_hdr;

		if (!adev->gfx.mec2_fw)
			return -EINVAL;

		mec2_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec2_fw->data;
		FUNC1(&mec2_hdr->header);
		adev->gfx.mec2_fw_version = FUNC3(mec2_hdr->header.ucode_version);
		adev->gfx.mec2_feature_version = FUNC3(
				mec2_hdr->ucode_feature_version);

		/* MEC2 */
		fw_data = (const __le32 *)
			(adev->gfx.mec2_fw->data +
			 FUNC3(mec2_hdr->header.ucode_array_offset_bytes));
		fw_size = FUNC3(mec2_hdr->header.ucode_size_bytes) / 4;
		FUNC0(mmCP_MEC_ME2_UCODE_ADDR, 0);
		for (i = 0; i < fw_size; i++)
			FUNC0(mmCP_MEC_ME2_UCODE_DATA, FUNC4(fw_data++));
		FUNC0(mmCP_MEC_ME2_UCODE_ADDR, 0);
	}

	return 0;
}