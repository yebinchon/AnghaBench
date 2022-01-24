#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ulBootUpSidePortClock; } ;
struct TYPE_4__ {int /*<<< orphan*/  ulBootUpMemoryClock; } ;
union igp_info {TYPE_2__ info_2; TYPE_1__ info; } ;
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct radeon_mode_info {TYPE_3__* atom_context; } ;
struct radeon_device {scalar_t__ family; struct radeon_mode_info mode_info; } ;
struct TYPE_6__ {scalar_t__ bios; } ;

/* Variables and functions */
 scalar_t__ CHIP_RS600 ; 
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IntegratedSystemInfo ; 
 scalar_t__ FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ *,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(struct radeon_device *rdev)
{
	struct radeon_mode_info *mode_info = &rdev->mode_info;
	int index = FUNC1(DATA, IntegratedSystemInfo);
	union igp_info *igp_info;
	u8 frev, crev;
	u16 data_offset;

	/* sideport is AMD only */
	if (rdev->family == CHIP_RS600)
		return false;

	if (FUNC2(mode_info->atom_context, index, NULL,
				   &frev, &crev, &data_offset)) {
		igp_info = (union igp_info *)(mode_info->atom_context->bios +
				      data_offset);
		switch (crev) {
		case 1:
			if (FUNC3(igp_info->info.ulBootUpMemoryClock))
				return true;
			break;
		case 2:
			if (FUNC3(igp_info->info_2.ulBootUpSidePortClock))
				return true;
			break;
		default:
			FUNC0("Unsupported IGP table: %d %d\n", frev, crev);
			break;
		}
	}
	return false;
}