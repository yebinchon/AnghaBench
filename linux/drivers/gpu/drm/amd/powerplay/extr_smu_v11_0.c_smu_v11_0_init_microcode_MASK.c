#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct smu_context {struct amdgpu_device* adev; } ;
struct TYPE_10__ {int /*<<< orphan*/  ucode_version; } ;
struct smc_firmware_header_v1_0 {TYPE_6__ header; } ;
struct common_firmware_header {int /*<<< orphan*/  ucode_size_bytes; } ;
struct amdgpu_firmware_info {size_t ucode_id; TYPE_3__* fw; } ;
struct TYPE_8__ {TYPE_3__* fw; int /*<<< orphan*/  fw_version; } ;
struct TYPE_7__ {scalar_t__ load_type; int /*<<< orphan*/  fw_size; struct amdgpu_firmware_info* ucode; } ;
struct amdgpu_device {int asic_type; TYPE_2__ pm; TYPE_1__ firmware; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_9__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 size_t AMDGPU_UCODE_ID_SMC ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  CHIP_ARCTURUS 132 
#define  CHIP_NAVI10 131 
#define  CHIP_NAVI12 130 
#define  CHIP_NAVI14 129 
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC9(struct smu_context *smu)
{
	struct amdgpu_device *adev = smu->adev;
	const char *chip_name;
	char fw_name[30];
	int err = 0;
	const struct smc_firmware_header_v1_0 *hdr;
	const struct common_firmware_header *header;
	struct amdgpu_firmware_info *ucode = NULL;

	switch (adev->asic_type) {
	case CHIP_VEGA20:
		chip_name = "vega20";
		break;
	case CHIP_ARCTURUS:
		chip_name = "arcturus";
		break;
	case CHIP_NAVI10:
		chip_name = "navi10";
		break;
	case CHIP_NAVI14:
		chip_name = "navi14";
		break;
	case CHIP_NAVI12:
		chip_name = "navi12";
		break;
	default:
		FUNC1();
	}

	FUNC8(fw_name, sizeof(fw_name), "amdgpu/%s_smc.bin", chip_name);

	err = FUNC7(&adev->pm.fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC4(adev->pm.fw);
	if (err)
		goto out;

	hdr = (const struct smc_firmware_header_v1_0 *) adev->pm.fw->data;
	FUNC3(&hdr->header);
	adev->pm.fw_version = FUNC5(hdr->header.ucode_version);

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
		ucode = &adev->firmware.ucode[AMDGPU_UCODE_ID_SMC];
		ucode->ucode_id = AMDGPU_UCODE_ID_SMC;
		ucode->fw = adev->pm.fw;
		header = (const struct common_firmware_header *)ucode->fw->data;
		adev->firmware.fw_size +=
			FUNC0(FUNC5(header->ucode_size_bytes), PAGE_SIZE);
	}

out:
	if (err) {
		FUNC2("smu_v11_0: Failed to load firmware \"%s\"\n",
			  fw_name);
		FUNC6(adev->pm.fw);
		adev->pm.fw = NULL;
	}
	return err;
}