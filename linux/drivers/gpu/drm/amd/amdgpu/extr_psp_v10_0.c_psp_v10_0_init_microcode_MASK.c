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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_version; } ;
struct psp_firmware_header_v1_0 {TYPE_2__ header; int /*<<< orphan*/  ucode_feature_version; } ;
struct psp_context {struct amdgpu_device* adev; } ;
struct TYPE_9__ {int asd_fw_version; int asd_feature_version; int asd_ucode_size; TYPE_4__* asd_fw; int /*<<< orphan*/ * asd_start_addr; } ;
struct amdgpu_device {int asic_type; int rev_id; TYPE_3__ psp; int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_7__ {int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CHIP_RAVEN 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC8(struct psp_context *psp)
{
	struct amdgpu_device *adev = psp->adev;
	const char *chip_name;
	char fw_name[30];
	int err = 0;
	const struct psp_firmware_header_v1_0 *hdr;

	FUNC1("\n");

	switch (adev->asic_type) {
	case CHIP_RAVEN:
		if (adev->rev_id >= 0x8)
			chip_name = "raven2";
		else if (adev->pdev->device == 0x15d8)
			chip_name = "picasso";
		else
			chip_name = "raven";
		break;
	default: FUNC0();
	}

	FUNC7(fw_name, sizeof(fw_name), "amdgpu/%s_asd.bin", chip_name);
	err = FUNC6(&adev->psp.asd_fw, fw_name, adev->dev);
	if (err)
		goto out;

	err = FUNC2(adev->psp.asd_fw);
	if (err)
		goto out;

	hdr = (const struct psp_firmware_header_v1_0 *)adev->psp.asd_fw->data;
	adev->psp.asd_fw_version = FUNC4(hdr->header.ucode_version);
	adev->psp.asd_feature_version = FUNC4(hdr->ucode_feature_version);
	adev->psp.asd_ucode_size = FUNC4(hdr->header.ucode_size_bytes);
	adev->psp.asd_start_addr = (uint8_t *)hdr +
				FUNC4(hdr->header.ucode_array_offset_bytes);

	return 0;
out:
	if (err) {
		FUNC3(adev->dev,
			"psp v10.0: Failed to load firmware \"%s\"\n",
			fw_name);
		FUNC5(adev->psp.asd_fw);
		adev->psp.asd_fw = NULL;
	}

	return err;
}