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
typedef  scalar_t__ u32 ;
struct device {int dummy; } ;
struct cpt_device {int /*<<< orphan*/  reg_base; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ CPT_MAX_CORE_GROUPS ; 
 int /*<<< orphan*/  CSR_DELAY ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct cpt_device *cpt)
{
	u32 grp, timeout = 100;
	struct device *dev = &cpt->pdev->dev;

	/* Disengage the cores from groups */
	for (grp = 0; grp < CPT_MAX_CORE_GROUPS; grp++) {
		FUNC4(cpt->reg_base, FUNC2(0, grp), 0);
		FUNC6(CSR_DELAY);
	}

	grp = FUNC3(cpt->reg_base, FUNC0(0));
	while (grp) {
		FUNC5(dev, "Cores still busy");
		grp = FUNC3(cpt->reg_base,
				     FUNC0(0));
		if (timeout--)
			break;

		FUNC6(CSR_DELAY);
	}
	/* Disable the cores */
	FUNC4(cpt->reg_base, FUNC1(0), 0);
}