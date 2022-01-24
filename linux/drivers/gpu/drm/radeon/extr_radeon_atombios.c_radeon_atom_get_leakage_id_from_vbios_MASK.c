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
struct TYPE_3__ {int /*<<< orphan*/  usVoltageLevel; int /*<<< orphan*/  ucVoltageMode; int /*<<< orphan*/  ucVoltageType; } ;
union set_voltage {TYPE_1__ v3; } ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {TYPE_2__ mode_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_GET_LEAKAGE_ID ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetVoltage ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct radeon_device *rdev,
					  u16 *leakage_id)
{
	union set_voltage args;
	int index = FUNC1(COMMAND, SetVoltage);
	u8 frev, crev;

	if (!FUNC3(rdev->mode_info.atom_context, index, &frev, &crev))
		return -EINVAL;

	switch (crev) {
	case 3:
	case 4:
		args.v3.ucVoltageType = 0;
		args.v3.ucVoltageMode = ATOM_GET_LEAKAGE_ID;
		args.v3.usVoltageLevel = 0;

		FUNC2(rdev->mode_info.atom_context, index, (uint32_t *)&args);

		*leakage_id = FUNC4(args.v3.usVoltageLevel);
		break;
	default:
		FUNC0("Unknown table version %d, %d\n", frev, crev);
		return -EINVAL;
	}

	return 0;
}