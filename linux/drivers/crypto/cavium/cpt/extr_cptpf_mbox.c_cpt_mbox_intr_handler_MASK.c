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
typedef  unsigned long long u8 ;
typedef  unsigned long long u64 ;
struct cpt_device {TYPE_1__* pdev; int /*<<< orphan*/  reg_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long long CPT_MAX_VF_NUM ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_device*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (struct cpt_device*,unsigned long long) ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long long,...) ; 

void FUNC5 (struct cpt_device *cpt, int mbx)
{
	u64 intr;
	u8  vf;

	intr = FUNC3(cpt->reg_base, FUNC0(0, 0));
	FUNC4(&cpt->pdev->dev, "PF interrupt Mbox%d 0x%llx\n", mbx, intr);
	for (vf = 0; vf < CPT_MAX_VF_NUM; vf++) {
		if (intr & (1ULL << vf)) {
			FUNC4(&cpt->pdev->dev, "Intr from VF %d\n", vf);
			FUNC2(cpt, vf);
			FUNC1(cpt, vf);
		}
	}
}