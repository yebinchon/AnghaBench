#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * fw; } ;
struct amdgpu_device {int asic_type; TYPE_2__ pm; int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  fw_name ;
struct TYPE_3__ {int revision; int device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CHIP_HAINAN 132 
#define  CHIP_OLAND 131 
#define  CHIP_PITCAIRN 130 
#define  CHIP_TAHITI 129 
#define  CHIP_VERDE 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
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
	case CHIP_TAHITI:
		chip_name = "tahiti";
		break;
	case CHIP_PITCAIRN:
		if ((adev->pdev->revision == 0x81) &&
		    ((adev->pdev->device == 0x6810) ||
		    (adev->pdev->device == 0x6811)))
			chip_name = "pitcairn_k";
		else
			chip_name = "pitcairn";
		break;
	case CHIP_VERDE:
		if (((adev->pdev->device == 0x6820) &&
			((adev->pdev->revision == 0x81) ||
			(adev->pdev->revision == 0x83))) ||
		    ((adev->pdev->device == 0x6821) &&
			((adev->pdev->revision == 0x83) ||
			(adev->pdev->revision == 0x87))) ||
		    ((adev->pdev->revision == 0x87) &&
			((adev->pdev->device == 0x6823) ||
			(adev->pdev->device == 0x682b))))
			chip_name = "verde_k";
		else
			chip_name = "verde";
		break;
	case CHIP_OLAND:
		if (((adev->pdev->revision == 0x81) &&
			((adev->pdev->device == 0x6600) ||
			(adev->pdev->device == 0x6604) ||
			(adev->pdev->device == 0x6605) ||
			(adev->pdev->device == 0x6610))) ||
		    ((adev->pdev->revision == 0x83) &&
			(adev->pdev->device == 0x6610)))
			chip_name = "oland_k";
		else
			chip_name = "oland";
		break;
	case CHIP_HAINAN:
		if (((adev->pdev->revision == 0x81) &&
			(adev->pdev->device == 0x6660)) ||
		    ((adev->pdev->revision == 0x83) &&
			((adev->pdev->device == 0x6660) ||
			(adev->pdev->device == 0x6663) ||
			(adev->pdev->device == 0x6665) ||
			 (adev->pdev->device == 0x6667))))
			chip_name = "hainan_k";
		else if ((adev->pdev->revision == 0xc3) &&
			 (adev->pdev->device == 0x6665))
			chip_name = "banks_k_2";
		else
			chip_name = "hainan";
		break;
	default: FUNC0();
	}

	FUNC6(fw_name, sizeof(fw_name), "amdgpu/%s_smc.bin", chip_name);
	err = FUNC5(&adev->pm.fw, fw_name, adev->dev);
	if (err)
		goto out;
	err = FUNC3(adev->pm.fw);

out:
	if (err) {
		FUNC2("si_smc: Failed to load firmware. err = %d\"%s\"\n",
			  err, fw_name);
		FUNC4(adev->pm.fw);
		adev->pm.fw = NULL;
	}
	return err;

}