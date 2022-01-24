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
struct TYPE_2__ {int /*<<< orphan*/ * rlc_fw; int /*<<< orphan*/ * mec2_fw; int /*<<< orphan*/ * mec_fw; int /*<<< orphan*/ * ce_fw; int /*<<< orphan*/ * me_fw; int /*<<< orphan*/ * pfp_fw; } ;
struct amdgpu_device {int asic_type; TYPE_1__ gfx; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  fw_name ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CHIP_BONAIRE 132 
#define  CHIP_HAWAII 131 
#define  CHIP_KABINI 130 
#define  CHIP_KAVERI 129 
#define  CHIP_MULLINS 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	const char *chip_name;
	char fw_name[30];
	int err;

	FUNC1("\n");

	switch (adev->asic_type) {
	case CHIP_BONAIRE:
		chip_name = "bonaire";
		break;
	case CHIP_HAWAII:
		chip_name = "hawaii";
		break;
	case CHIP_KAVERI:
		chip_name = "kaveri";
		break;
	case CHIP_KABINI:
		chip_name = "kabini";
		break;
	case CHIP_MULLINS:
		chip_name = "mullins";
		break;
	default: FUNC0();
	}

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_pfp.bin", chip_name);
	err = FUNC5(&adev->gfx.pfp_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.pfp_fw);
	if (err)
		goto out;

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_me.bin", chip_name);
	err = FUNC5(&adev->gfx.me_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.me_fw);
	if (err)
		goto out;

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_ce.bin", chip_name);
	err = FUNC5(&adev->gfx.ce_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.ce_fw);
	if (err)
		goto out;

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_mec.bin", chip_name);
	err = FUNC5(&adev->gfx.mec_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.mec_fw);
	if (err)
		goto out;

	if (adev->asic_type == CHIP_KAVERI) {
		FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_mec2.bin", chip_name);
		err = FUNC5(&adev->gfx.mec2_fw, fw_name, adev->dev);
		if (err)
			goto out;
		err = FUNC2(adev->gfx.mec2_fw);
		if (err)
			goto out;
	}

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_rlc.bin", chip_name);
	err = FUNC5(&adev->gfx.rlc_fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gfx.rlc_fw);

out:
	if (err) {
		FUNC3("gfx7: Failed to load firmware \"%s\"\n", fw_name);
		FUNC4(adev->gfx.pfp_fw);
		adev->gfx.pfp_fw = NULL;
		FUNC4(adev->gfx.me_fw);
		adev->gfx.me_fw = NULL;
		FUNC4(adev->gfx.ce_fw);
		adev->gfx.ce_fw = NULL;
		FUNC4(adev->gfx.mec_fw);
		adev->gfx.mec_fw = NULL;
		FUNC4(adev->gfx.mec2_fw);
		adev->gfx.mec2_fw = NULL;
		FUNC4(adev->gfx.rlc_fw);
		adev->gfx.rlc_fw = NULL;
	}
	return err;
}