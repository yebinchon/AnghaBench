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
typedef  int u32 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int fam; int model; int /*<<< orphan*/  F3; int /*<<< orphan*/  F6; int /*<<< orphan*/  F2; } ;
struct TYPE_3__ {int scrubval; int bandwidth; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  F15H_M60H_SCRCTRL ; 
 int /*<<< orphan*/  F17H_SCR_BASE_ADDR ; 
 int /*<<< orphan*/  F17H_SCR_LIMIT_ADDR ; 
 int /*<<< orphan*/  SCRCTRL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct amd64_pvt*,int /*<<< orphan*/ ) ; 
 TYPE_1__* scrubrates ; 

__attribute__((used)) static int FUNC4(struct mem_ctl_info *mci)
{
	struct amd64_pvt *pvt = mci->pvt_info;
	int i, retval = -EINVAL;
	u32 scrubval = 0;

	switch (pvt->fam) {
	case 0x15:
		/* Erratum #505 */
		if (pvt->model < 0x10)
			FUNC3(pvt, 0);

		if (pvt->model == 0x60)
			FUNC2(pvt->F2, F15H_M60H_SCRCTRL, &scrubval);
		break;

	case 0x17:
	case 0x18:
		FUNC2(pvt->F6, F17H_SCR_BASE_ADDR, &scrubval);
		if (scrubval & FUNC1(0)) {
			FUNC2(pvt->F6, F17H_SCR_LIMIT_ADDR, &scrubval);
			scrubval &= 0xF;
			scrubval += 0x5;
		} else {
			scrubval = 0;
		}
		break;

	default:
		FUNC2(pvt->F3, SCRCTRL, &scrubval);
		break;
	}

	scrubval = scrubval & 0x001F;

	for (i = 0; i < FUNC0(scrubrates); i++) {
		if (scrubrates[i].scrubval == scrubval) {
			retval = scrubrates[i].bandwidth;
			break;
		}
	}
	return retval;
}