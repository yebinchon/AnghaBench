#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * fw; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gmc; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  fw_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CHIP_HAINAN 132 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  mmMC_SEQ_MISC0 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	const char *chip_name;
	char fw_name[30];
	int err;
	bool is_58_fw = false;

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

	/* this memory configuration requires special firmware */
	if (((FUNC2(mmMC_SEQ_MISC0) & 0xff000000) >> 24) == 0x58)
		is_58_fw = true;

	if (is_58_fw)
		FUNC7(fw_name, sizeof(fw_name), "amdgpu/si58_mc.bin");
	else
		FUNC7(fw_name, sizeof(fw_name), "amdgpu/%s_mc.bin", chip_name);
	err = FUNC6(&adev->gmc.fw, fw_name, adev->dev);
	if (err)
		goto out;

	err = FUNC3(adev->gmc.fw);

out:
	if (err) {
		FUNC4(adev->dev,
		       "si_mc: Failed to load firmware \"%s\"\n",
		       fw_name);
		FUNC5(adev->gmc.fw);
		adev->gmc.fw = NULL;
	}
	return err;
}