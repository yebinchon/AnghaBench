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
#define  CHIP_BONAIRE 133 
#define  CHIP_HAWAII 132 
#define  CHIP_KABINI 131 
#define  CHIP_KAVERI 130 
#define  CHIP_MULLINS 129 
#define  CHIP_TOPAZ 128 
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
	case CHIP_TOPAZ:
		chip_name = "topaz";
		break;
	case CHIP_KAVERI:
	case CHIP_KABINI:
	case CHIP_MULLINS:
		return 0;
	default: FUNC0();
	}

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_mc.bin", chip_name);

	err = FUNC5(&adev->gmc.fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC2(adev->gmc.fw);

out:
	if (err) {
		FUNC3("cik_mc: Failed to load firmware \"%s\"\n", fw_name);
		FUNC4(adev->gmc.fw);
		adev->gmc.fw = NULL;
	}
	return err;
}