#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_device {scalar_t__ family; TYPE_1__* me_fw; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 scalar_t__ CHIP_R100 ; 
 scalar_t__ CHIP_R200 ; 
 scalar_t__ CHIP_R300 ; 
 scalar_t__ CHIP_R350 ; 
 scalar_t__ CHIP_R420 ; 
 scalar_t__ CHIP_R423 ; 
 scalar_t__ CHIP_R520 ; 
 scalar_t__ CHIP_R580 ; 
 scalar_t__ CHIP_RS100 ; 
 scalar_t__ CHIP_RS200 ; 
 scalar_t__ CHIP_RS300 ; 
 scalar_t__ CHIP_RS400 ; 
 scalar_t__ CHIP_RS480 ; 
 scalar_t__ CHIP_RS600 ; 
 scalar_t__ CHIP_RS690 ; 
 scalar_t__ CHIP_RS740 ; 
 scalar_t__ CHIP_RV100 ; 
 scalar_t__ CHIP_RV200 ; 
 scalar_t__ CHIP_RV250 ; 
 scalar_t__ CHIP_RV280 ; 
 scalar_t__ CHIP_RV350 ; 
 scalar_t__ CHIP_RV380 ; 
 scalar_t__ CHIP_RV410 ; 
 scalar_t__ CHIP_RV515 ; 
 scalar_t__ CHIP_RV530 ; 
 scalar_t__ CHIP_RV560 ; 
 scalar_t__ CHIP_RV570 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 char* FIRMWARE_R100 ; 
 char* FIRMWARE_R200 ; 
 char* FIRMWARE_R300 ; 
 char* FIRMWARE_R420 ; 
 char* FIRMWARE_R520 ; 
 char* FIRMWARE_RS600 ; 
 char* FIRMWARE_RS690 ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__**,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev)
{
	const char *fw_name = NULL;
	int err;

	FUNC0("\n");

	if ((rdev->family == CHIP_R100) || (rdev->family == CHIP_RV100) ||
	    (rdev->family == CHIP_RV200) || (rdev->family == CHIP_RS100) ||
	    (rdev->family == CHIP_RS200)) {
		FUNC1("Loading R100 Microcode\n");
		fw_name = FIRMWARE_R100;
	} else if ((rdev->family == CHIP_R200) ||
		   (rdev->family == CHIP_RV250) ||
		   (rdev->family == CHIP_RV280) ||
		   (rdev->family == CHIP_RS300)) {
		FUNC1("Loading R200 Microcode\n");
		fw_name = FIRMWARE_R200;
	} else if ((rdev->family == CHIP_R300) ||
		   (rdev->family == CHIP_R350) ||
		   (rdev->family == CHIP_RV350) ||
		   (rdev->family == CHIP_RV380) ||
		   (rdev->family == CHIP_RS400) ||
		   (rdev->family == CHIP_RS480)) {
		FUNC1("Loading R300 Microcode\n");
		fw_name = FIRMWARE_R300;
	} else if ((rdev->family == CHIP_R420) ||
		   (rdev->family == CHIP_R423) ||
		   (rdev->family == CHIP_RV410)) {
		FUNC1("Loading R400 Microcode\n");
		fw_name = FIRMWARE_R420;
	} else if ((rdev->family == CHIP_RS690) ||
		   (rdev->family == CHIP_RS740)) {
		FUNC1("Loading RS690/RS740 Microcode\n");
		fw_name = FIRMWARE_RS690;
	} else if (rdev->family == CHIP_RS600) {
		FUNC1("Loading RS600 Microcode\n");
		fw_name = FIRMWARE_RS600;
	} else if ((rdev->family == CHIP_RV515) ||
		   (rdev->family == CHIP_R520) ||
		   (rdev->family == CHIP_RV530) ||
		   (rdev->family == CHIP_R580) ||
		   (rdev->family == CHIP_RV560) ||
		   (rdev->family == CHIP_RV570)) {
		FUNC1("Loading R500 Microcode\n");
		fw_name = FIRMWARE_R520;
	}

	err = FUNC4(&rdev->me_fw, fw_name, rdev->dev);
	if (err) {
		FUNC2("radeon_cp: Failed to load firmware \"%s\"\n", fw_name);
	} else if (rdev->me_fw->size % 8) {
		FUNC2("radeon_cp: Bogus length %zu in firmware \"%s\"\n",
		       rdev->me_fw->size, fw_name);
		err = -EINVAL;
		FUNC3(rdev->me_fw);
		rdev->me_fw = NULL;
	}
	return err;
}