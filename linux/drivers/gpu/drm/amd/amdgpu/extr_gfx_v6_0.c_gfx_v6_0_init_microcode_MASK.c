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
struct TYPE_8__ {int /*<<< orphan*/  ucode_version; } ;
struct rlc_firmware_header_v1_0 {int /*<<< orphan*/  ucode_feature_version; TYPE_2__ header; } ;
struct TYPE_7__ {int /*<<< orphan*/  ucode_version; } ;
struct gfx_firmware_header_v1_0 {int /*<<< orphan*/  ucode_feature_version; TYPE_1__ header; } ;
struct TYPE_9__ {TYPE_4__* rlc_fw; TYPE_4__* ce_fw; TYPE_4__* me_fw; TYPE_4__* pfp_fw; void* rlc_feature_version; void* rlc_fw_version; void* ce_feature_version; void* ce_fw_version; void* me_feature_version; void* me_fw_version; void* pfp_feature_version; void* pfp_fw_version; } ;
struct amdgpu_device {int asic_type; TYPE_3__ gfx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CHIP_HAINAN 132 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_4__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	const char *chip_name;
	char fw_name[30];
	int err;
	const struct gfx_firmware_header_v1_0 *cp_hdr;
	const struct rlc_firmware_header_v1_0 *rlc_hdr;

	FUNC1("\n");

	switch (adev->asic_type) {
	case CHIP_TAHITI:
		chip_name = "tahiti";
		break;
	case CHIP_PITCAIRN:
		chip_name = "pitcairn";
		break;
	case CHIP_VERDE:
		chip_name = "verde";
		break;
	case CHIP_OLAND:
		chip_name = "oland";
		break;
	case CHIP_HAINAN:
		chip_name = "hainan";
		break;
	default: FUNC0();
	}

	FUNC7(fw_name, sizeof(fw_name), "amdgpu/%s_pfp.bin", chip_name);
	err = FUNC6(&adev->gfx.pfp_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.pfp_fw);
	if (err)
		goto out;
	cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.pfp_fw->data;
	adev->gfx.pfp_fw_version = FUNC3(cp_hdr->header.ucode_version);
	adev->gfx.pfp_feature_version = FUNC3(cp_hdr->ucode_feature_version);

	FUNC7(fw_name, sizeof(fw_name), "amdgpu/%s_me.bin", chip_name);
	err = FUNC6(&adev->gfx.me_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.me_fw);
	if (err)
		goto out;
	cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.me_fw->data;
	adev->gfx.me_fw_version = FUNC3(cp_hdr->header.ucode_version);
	adev->gfx.me_feature_version = FUNC3(cp_hdr->ucode_feature_version);

	FUNC7(fw_name, sizeof(fw_name), "amdgpu/%s_ce.bin", chip_name);
	err = FUNC6(&adev->gfx.ce_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.ce_fw);
	if (err)
		goto out;
	cp_hdr = (const struct gfx_firmware_header_v1_0 *)adev->gfx.ce_fw->data;
	adev->gfx.ce_fw_version = FUNC3(cp_hdr->header.ucode_version);
	adev->gfx.ce_feature_version = FUNC3(cp_hdr->ucode_feature_version);

	FUNC7(fw_name, sizeof(fw_name), "amdgpu/%s_rlc.bin", chip_name);
	err = FUNC6(&adev->gfx.rlc_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.rlc_fw);
	rlc_hdr = (const struct rlc_firmware_header_v1_0 *)adev->gfx.rlc_fw->data;
	adev->gfx.rlc_fw_version = FUNC3(rlc_hdr->header.ucode_version);
	adev->gfx.rlc_feature_version = FUNC3(rlc_hdr->ucode_feature_version);

out:
	if (err) {
		FUNC4("gfx6: Failed to load firmware \"%s\"\n", fw_name);
		FUNC5(adev->gfx.pfp_fw);
		adev->gfx.pfp_fw = NULL;
		FUNC5(adev->gfx.me_fw);
		adev->gfx.me_fw = NULL;
		FUNC5(adev->gfx.ce_fw);
		adev->gfx.ce_fw = NULL;
		FUNC5(adev->gfx.rlc_fw);
		adev->gfx.rlc_fw = NULL;
	}
	return err;
}