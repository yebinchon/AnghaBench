#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_11__ {unsigned int ucode_version; int /*<<< orphan*/  header_version_minor; int /*<<< orphan*/  header_version_major; } ;
struct rlc_firmware_header_v2_0 {unsigned int ucode_feature_version; unsigned int save_and_restore_offset; unsigned int clear_state_descriptor_offset; unsigned int avail_scratch_ram_locations; unsigned int reg_restore_list_size; unsigned int reg_list_format_start; unsigned int reg_list_format_separate_start; unsigned int starting_offsets_start; unsigned int reg_list_format_size_bytes; unsigned int reg_list_size_bytes; unsigned int reg_list_format_array_offset_bytes; unsigned int reg_list_array_offset_bytes; TYPE_3__ header; } ;
struct common_firmware_header {unsigned int ucode_size_bytes; } ;
struct amdgpu_firmware_info {size_t ucode_id; TYPE_6__* fw; } ;
struct TYPE_13__ {int is_rlc_v2_1; int reg_list_format_size_bytes; int reg_list_size_bytes; void* save_restore_list_cntl_size_bytes; void* save_restore_list_gpm_size_bytes; void* save_restore_list_srm_size_bytes; void** register_restore; void** register_list_format; void* starting_offsets_start; void* reg_list_format_separate_start; void* reg_list_format_start; void* reg_restore_list_size; void* avail_scratch_ram_locations; void* clear_state_descriptor_offset; void* save_and_restore_offset; } ;
struct TYPE_12__ {TYPE_6__* rlc_fw; TYPE_5__ rlc; void* rlc_feature_version; void* rlc_fw_version; } ;
struct TYPE_9__ {scalar_t__ load_type; int /*<<< orphan*/  fw_size; struct amdgpu_firmware_info* ucode; } ;
struct amdgpu_device {TYPE_4__ gfx; int /*<<< orphan*/  dev; TYPE_1__ firmware; TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_10__ {int revision; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 size_t AMDGPU_UCODE_ID_RLC_G ; 
 size_t AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL ; 
 size_t AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM ; 
 size_t AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct amdgpu_device*,int*) ; 
 int FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 void** FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int FUNC9 (TYPE_6__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_device *adev,
					  const char *chip_name)
{
	char fw_name[30];
	int err;
	struct amdgpu_firmware_info *info = NULL;
	const struct common_firmware_header *header = NULL;
	const struct rlc_firmware_header_v2_0 *rlc_hdr;
	unsigned int *tmp = NULL;
	unsigned int i = 0;
	uint16_t version_major;
	uint16_t version_minor;
	uint32_t smu_version;

	/*
	 * For Picasso && AM4 SOCKET board, we use picasso_rlc_am4.bin
	 * instead of picasso_rlc.bin.
	 * Judgment method:
	 * PCO AM4: revision >= 0xC8 && revision <= 0xCF
	 *          or revision >= 0xD8 && revision <= 0xDF
	 * otherwise is PCO FP5
	 */
	if (!FUNC11(chip_name, "picasso") &&
		(((adev->pdev->revision >= 0xC8) && (adev->pdev->revision <= 0xCF)) ||
		((adev->pdev->revision >= 0xD8) && (adev->pdev->revision <= 0xDF))))
		FUNC10(fw_name, sizeof(fw_name), "amdgpu/%s_rlc_am4.bin", chip_name);
	else if (!FUNC11(chip_name, "raven") && (FUNC1(adev, &smu_version) == 0) &&
		(smu_version >= 0x41e2b))
		/**
		*SMC is loaded by SBIOS on APU and it's able to get the SMU version directly.
		*/
		FUNC10(fw_name, sizeof(fw_name), "amdgpu/%s_kicker_rlc.bin", chip_name);
	else
		FUNC10(fw_name, sizeof(fw_name), "amdgpu/%s_rlc.bin", chip_name);
	err = FUNC9(&adev->gfx.rlc_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.rlc_fw);
	rlc_hdr = (const struct rlc_firmware_header_v2_0 *)adev->gfx.rlc_fw->data;

	version_major = FUNC6(rlc_hdr->header.header_version_major);
	version_minor = FUNC6(rlc_hdr->header.header_version_minor);
	if (version_major == 2 && version_minor == 1)
		adev->gfx.rlc.is_rlc_v2_1 = true;

	adev->gfx.rlc_fw_version = FUNC7(rlc_hdr->header.ucode_version);
	adev->gfx.rlc_feature_version = FUNC7(rlc_hdr->ucode_feature_version);
	adev->gfx.rlc.save_and_restore_offset =
			FUNC7(rlc_hdr->save_and_restore_offset);
	adev->gfx.rlc.clear_state_descriptor_offset =
			FUNC7(rlc_hdr->clear_state_descriptor_offset);
	adev->gfx.rlc.avail_scratch_ram_locations =
			FUNC7(rlc_hdr->avail_scratch_ram_locations);
	adev->gfx.rlc.reg_restore_list_size =
			FUNC7(rlc_hdr->reg_restore_list_size);
	adev->gfx.rlc.reg_list_format_start =
			FUNC7(rlc_hdr->reg_list_format_start);
	adev->gfx.rlc.reg_list_format_separate_start =
			FUNC7(rlc_hdr->reg_list_format_separate_start);
	adev->gfx.rlc.starting_offsets_start =
			FUNC7(rlc_hdr->starting_offsets_start);
	adev->gfx.rlc.reg_list_format_size_bytes =
			FUNC7(rlc_hdr->reg_list_format_size_bytes);
	adev->gfx.rlc.reg_list_size_bytes =
			FUNC7(rlc_hdr->reg_list_size_bytes);
	adev->gfx.rlc.register_list_format =
			FUNC5(adev->gfx.rlc.reg_list_format_size_bytes +
				adev->gfx.rlc.reg_list_size_bytes, GFP_KERNEL);
	if (!adev->gfx.rlc.register_list_format) {
		err = -ENOMEM;
		goto out;
	}

	tmp = (unsigned int *)((uintptr_t)rlc_hdr +
			FUNC7(rlc_hdr->reg_list_format_array_offset_bytes));
	for (i = 0 ; i < (adev->gfx.rlc.reg_list_format_size_bytes >> 2); i++)
		adev->gfx.rlc.register_list_format[i] =	FUNC7(tmp[i]);

	adev->gfx.rlc.register_restore = adev->gfx.rlc.register_list_format + i;

	tmp = (unsigned int *)((uintptr_t)rlc_hdr +
			FUNC7(rlc_hdr->reg_list_array_offset_bytes));
	for (i = 0 ; i < (adev->gfx.rlc.reg_list_size_bytes >> 2); i++)
		adev->gfx.rlc.register_restore[i] = FUNC7(tmp[i]);

	if (adev->gfx.rlc.is_rlc_v2_1)
		FUNC4(adev);

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
		info = &adev->firmware.ucode[AMDGPU_UCODE_ID_RLC_G];
		info->ucode_id = AMDGPU_UCODE_ID_RLC_G;
		info->fw = adev->gfx.rlc_fw;
		header = (const struct common_firmware_header *)info->fw->data;
		adev->firmware.fw_size +=
			FUNC0(FUNC7(header->ucode_size_bytes), PAGE_SIZE);

		if (adev->gfx.rlc.is_rlc_v2_1 &&
		    adev->gfx.rlc.save_restore_list_cntl_size_bytes &&
		    adev->gfx.rlc.save_restore_list_gpm_size_bytes &&
		    adev->gfx.rlc.save_restore_list_srm_size_bytes) {
			info = &adev->firmware.ucode[AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL];
			info->ucode_id = AMDGPU_UCODE_ID_RLC_RESTORE_LIST_CNTL;
			info->fw = adev->gfx.rlc_fw;
			adev->firmware.fw_size +=
				FUNC0(adev->gfx.rlc.save_restore_list_cntl_size_bytes, PAGE_SIZE);

			info = &adev->firmware.ucode[AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM];
			info->ucode_id = AMDGPU_UCODE_ID_RLC_RESTORE_LIST_GPM_MEM;
			info->fw = adev->gfx.rlc_fw;
			adev->firmware.fw_size +=
				FUNC0(adev->gfx.rlc.save_restore_list_gpm_size_bytes, PAGE_SIZE);

			info = &adev->firmware.ucode[AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM];
			info->ucode_id = AMDGPU_UCODE_ID_RLC_RESTORE_LIST_SRM_MEM;
			info->fw = adev->gfx.rlc_fw;
			adev->firmware.fw_size +=
				FUNC0(adev->gfx.rlc.save_restore_list_srm_size_bytes, PAGE_SIZE);
		}
	}

out:
	if (err) {
		FUNC3(adev->dev,
			"gfx9: Failed to load firmware \"%s\"\n",
			fw_name);
		FUNC8(adev->gfx.rlc_fw);
		adev->gfx.rlc_fw = NULL;
	}
	return err;
}