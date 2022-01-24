#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ucode_version; } ;
struct gfx_firmware_header_v1_0 {int /*<<< orphan*/  jt_size; int /*<<< orphan*/  ucode_feature_version; TYPE_1__ header; } ;
struct common_firmware_header {int /*<<< orphan*/  ucode_size_bytes; } ;
struct amdgpu_firmware_info {size_t ucode_id; TYPE_4__* fw; } ;
struct TYPE_9__ {int mec_fw_version; int mec_feature_version; int mec2_fw_version; int mec2_feature_version; TYPE_4__* mec2_fw; TYPE_4__* mec_fw; } ;
struct TYPE_8__ {scalar_t__ load_type; int /*<<< orphan*/  fw_size; struct amdgpu_firmware_info* ucode; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gfx; int /*<<< orphan*/  dev; TYPE_2__ firmware; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 size_t AMDGPU_UCODE_ID_CP_MEC1 ; 
 size_t AMDGPU_UCODE_ID_CP_MEC1_JT ; 
 size_t AMDGPU_UCODE_ID_CP_MEC2 ; 
 size_t AMDGPU_UCODE_ID_CP_MEC2_JT ; 
 scalar_t__ CHIP_ARCTURUS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev,
					  const char *chip_name)
{
	char fw_name[30];
	int err;
	struct amdgpu_firmware_info *info = NULL;
	const struct common_firmware_header *header = NULL;
	const struct gfx_firmware_header_v1_0 *cp_hdr;

	FUNC8(fw_name, sizeof(fw_name), "amdgpu/%s_mec.bin", chip_name);
	err = FUNC7(&adev->gfx.mec_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC1(adev->gfx.mec_fw);
	if (err)
		goto out;
	cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
	adev->gfx.mec_fw_version = FUNC5(cp_hdr->header.ucode_version);
	adev->gfx.mec_feature_version = FUNC5(cp_hdr->ucode_feature_version);


	FUNC8(fw_name, sizeof(fw_name), "amdgpu/%s_mec2.bin", chip_name);
	err = FUNC7(&adev->gfx.mec2_fw, fw_name, adev->dev);
	if (!err) {
		err = FUNC1(adev->gfx.mec2_fw);
		if (err)
			goto out;
		cp_hdr = (const struct gfx_firmware_header_v1_0 *)
		adev->gfx.mec2_fw->data;
		adev->gfx.mec2_fw_version =
		FUNC5(cp_hdr->header.ucode_version);
		adev->gfx.mec2_feature_version =
		FUNC5(cp_hdr->ucode_feature_version);
	} else {
		err = 0;
		adev->gfx.mec2_fw = NULL;
	}

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
		info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_MEC1];
		info->ucode_id = AMDGPU_UCODE_ID_CP_MEC1;
		info->fw = adev->gfx.mec_fw;
		header = (const struct common_firmware_header *)info->fw->data;
		cp_hdr = (const struct gfx_firmware_header_v1_0 *)info->fw->data;
		adev->firmware.fw_size +=
			FUNC0(FUNC5(header->ucode_size_bytes) - FUNC5(cp_hdr->jt_size) * 4, PAGE_SIZE);

		info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_MEC1_JT];
		info->ucode_id = AMDGPU_UCODE_ID_CP_MEC1_JT;
		info->fw = adev->gfx.mec_fw;
		adev->firmware.fw_size +=
			FUNC0(FUNC5(cp_hdr->jt_size) * 4, PAGE_SIZE);

		if (adev->gfx.mec2_fw) {
			info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_MEC2];
			info->ucode_id = AMDGPU_UCODE_ID_CP_MEC2;
			info->fw = adev->gfx.mec2_fw;
			header = (const struct common_firmware_header *)info->fw->data;
			cp_hdr = (const struct gfx_firmware_header_v1_0 *)info->fw->data;
			adev->firmware.fw_size +=
				FUNC0(FUNC5(header->ucode_size_bytes) - FUNC5(cp_hdr->jt_size) * 4, PAGE_SIZE);

			/* TODO: Determine if MEC2 JT FW loading can be removed
				 for all GFX V9 asic and above */
			if (adev->asic_type != CHIP_ARCTURUS) {
				info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_MEC2_JT];
				info->ucode_id = AMDGPU_UCODE_ID_CP_MEC2_JT;
				info->fw = adev->gfx.mec2_fw;
				adev->firmware.fw_size +=
					FUNC0(FUNC5(cp_hdr->jt_size) * 4,
					PAGE_SIZE);
			}
		}
	}

out:
	FUNC4(adev);
	FUNC3(adev);
	if (err) {
		FUNC2(adev->dev,
			"gfx9: Failed to load firmware \"%s\"\n",
			fw_name);
		FUNC6(adev->gfx.mec_fw);
		adev->gfx.mec_fw = NULL;
		FUNC6(adev->gfx.mec2_fw);
		adev->gfx.mec2_fw = NULL;
	}
	return err;
}