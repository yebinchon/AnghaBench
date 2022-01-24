#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct common_firmware_header {int /*<<< orphan*/  ucode_size_bytes; } ;
struct amdgpu_sdma_instance {int dummy; } ;
struct amdgpu_firmware_info {int ucode_id; TYPE_5__* fw; } ;
struct TYPE_8__ {scalar_t__ load_type; int /*<<< orphan*/  fw_size; struct amdgpu_firmware_info* ucode; } ;
struct TYPE_7__ {int num_instances; TYPE_4__* instance; } ;
struct amdgpu_device {int asic_type; int rev_id; TYPE_3__ firmware; TYPE_2__ sdma; int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_5__* fw; } ;
struct TYPE_6__ {int device; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ AMDGPU_FW_LOAD_PSP ; 
 int AMDGPU_UCODE_ID_SDMA0 ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  CHIP_ARCTURUS 133 
#define  CHIP_RAVEN 132 
#define  CHIP_RENOIR 131 
#define  CHIP_VEGA10 130 
#define  CHIP_VEGA12 129 
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 int FUNC6 (TYPE_5__**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,...) ; 

__attribute__((used)) static int FUNC10(struct amdgpu_device *adev)
{
	const char *chip_name;
	char fw_name[30];
	int err = 0, i;
	struct amdgpu_firmware_info *info = NULL;
	const struct common_firmware_header *header = NULL;

	FUNC2("\n");

	switch (adev->asic_type) {
	case CHIP_VEGA10:
		chip_name = "vega10";
		break;
	case CHIP_VEGA12:
		chip_name = "vega12";
		break;
	case CHIP_VEGA20:
		chip_name = "vega20";
		break;
	case CHIP_RAVEN:
		if (adev->rev_id >= 8)
			chip_name = "raven2";
		else if (adev->pdev->device == 0x15d8)
			chip_name = "picasso";
		else
			chip_name = "raven";
		break;
	case CHIP_ARCTURUS:
		chip_name = "arcturus";
		break;
	case CHIP_RENOIR:
		chip_name = "renoir";
		break;
	default:
		FUNC1();
	}

	FUNC9(fw_name, sizeof(fw_name), "amdgpu/%s_sdma.bin", chip_name);

	err = FUNC6(&adev->sdma.instance[0].fw, fw_name, adev->dev);
	if (err)
		goto out;

	err = FUNC8(&adev->sdma.instance[0]);
	if (err)
		goto out;

	for (i = 1; i < adev->sdma.num_instances; i++) {
		if (adev->asic_type == CHIP_ARCTURUS) {
			/* Acturus will leverage the same FW memory
			   for every SDMA instance */
			FUNC5((void*)&adev->sdma.instance[i],
			       (void*)&adev->sdma.instance[0],
			       sizeof(struct amdgpu_sdma_instance));
		}
		else {
			FUNC9(fw_name, sizeof(fw_name), "amdgpu/%s_sdma%d.bin", chip_name, i);

			err = FUNC6(&adev->sdma.instance[i].fw, fw_name, adev->dev);
			if (err)
				goto out;

			err = FUNC8(&adev->sdma.instance[i]);
			if (err)
				goto out;
		}
	}

	FUNC2("psp_load == '%s'\n",
		adev->firmware.load_type == AMDGPU_FW_LOAD_PSP ? "true" : "false");

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
		for (i = 0; i < adev->sdma.num_instances; i++) {
			info = &adev->firmware.ucode[AMDGPU_UCODE_ID_SDMA0 + i];
			info->ucode_id = AMDGPU_UCODE_ID_SDMA0 + i;
			info->fw = adev->sdma.instance[i].fw;
			header = (const struct common_firmware_header *)info->fw->data;
			adev->firmware.fw_size +=
				FUNC0(FUNC4(header->ucode_size_bytes), PAGE_SIZE);
		}
	}

out:
	if (err) {
		FUNC3("sdma_v4_0: Failed to load firmware \"%s\"\n", fw_name);
		FUNC7(adev);
	}
	return err;
}