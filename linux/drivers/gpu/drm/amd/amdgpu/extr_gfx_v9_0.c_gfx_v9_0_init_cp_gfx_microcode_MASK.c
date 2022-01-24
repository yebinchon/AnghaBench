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
struct gfx_firmware_header_v1_0 {int /*<<< orphan*/  ucode_feature_version; TYPE_1__ header; } ;
struct common_firmware_header {int /*<<< orphan*/  ucode_size_bytes; } ;
struct amdgpu_firmware_info {size_t ucode_id; TYPE_4__* fw; } ;
struct TYPE_9__ {TYPE_4__* ce_fw; TYPE_4__* me_fw; TYPE_4__* pfp_fw; void* ce_feature_version; void* ce_fw_version; void* me_feature_version; void* me_fw_version; void* pfp_feature_version; void* pfp_fw_version; } ;
struct TYPE_8__ {scalar_t__ load_type; int /*<<< orphan*/  fw_size; struct amdgpu_firmware_info* ucode; } ;
struct amdgpu_device {TYPE_3__ gfx; int /*<<< orphan*/  dev; TYPE_2__ firmware; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 size_t AMDGPU_UCODE_ID_CP_CE ; 
 size_t AMDGPU_UCODE_ID_CP_ME ; 
 size_t AMDGPU_UCODE_ID_CP_PFP ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev,
					  const char *chip_name)
{
	char fw_name[30];
	int err;
	struct amdgpu_firmware_info *info = NULL;
	const struct common_firmware_header *header = NULL;
	const struct gfx_firmware_header_v1_0 *cp_hdr;

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_pfp.bin", chip_name);
	err = FUNC5(&adev->gfx.pfp_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC1(adev->gfx.pfp_fw);
	if (err)
		goto out;
	cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.pfp_fw->data;
	adev->gfx.pfp_fw_version = FUNC3(cp_hdr->header.ucode_version);
	adev->gfx.pfp_feature_version = FUNC3(cp_hdr->ucode_feature_version);

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_me.bin", chip_name);
	err = FUNC5(&adev->gfx.me_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC1(adev->gfx.me_fw);
	if (err)
		goto out;
	cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.me_fw->data;
	adev->gfx.me_fw_version = FUNC3(cp_hdr->header.ucode_version);
	adev->gfx.me_feature_version = FUNC3(cp_hdr->ucode_feature_version);

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_ce.bin", chip_name);
	err = FUNC5(&adev->gfx.ce_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC1(adev->gfx.ce_fw);
	if (err)
		goto out;
	cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.ce_fw->data;
	adev->gfx.ce_fw_version = FUNC3(cp_hdr->header.ucode_version);
	adev->gfx.ce_feature_version = FUNC3(cp_hdr->ucode_feature_version);

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
		info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_PFP];
		info->ucode_id = AMDGPU_UCODE_ID_CP_PFP;
		info->fw = adev->gfx.pfp_fw;
		header = (const struct common_firmware_header *)info->fw->data;
		adev->firmware.fw_size +=
			FUNC0(FUNC3(header->ucode_size_bytes), PAGE_SIZE);

		info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_ME];
		info->ucode_id = AMDGPU_UCODE_ID_CP_ME;
		info->fw = adev->gfx.me_fw;
		header = (const struct common_firmware_header *)info->fw->data;
		adev->firmware.fw_size +=
			FUNC0(FUNC3(header->ucode_size_bytes), PAGE_SIZE);

		info = &adev->firmware.ucode[AMDGPU_UCODE_ID_CP_CE];
		info->ucode_id = AMDGPU_UCODE_ID_CP_CE;
		info->fw = adev->gfx.ce_fw;
		header = (const struct common_firmware_header *)info->fw->data;
		adev->firmware.fw_size +=
			FUNC0(FUNC3(header->ucode_size_bytes), PAGE_SIZE);
	}

out:
	if (err) {
		FUNC2(adev->dev,
			"gfx9: Failed to load firmware \"%s\"\n",
			fw_name);
		FUNC4(adev->gfx.pfp_fw);
		adev->gfx.pfp_fw = NULL;
		FUNC4(adev->gfx.me_fw);
		adev->gfx.me_fw = NULL;
		FUNC4(adev->gfx.ce_fw);
		adev->gfx.ce_fw = NULL;
	}
	return err;
}