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
typedef  scalar_t__ u64 ;
struct device {int dummy; } ;
struct cpt_device {int /*<<< orphan*/  flags; scalar_t__ next_group; scalar_t__ next_mc_idx; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPT_FLAG_DEVICE_READY ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct cpt_device*) ; 
 scalar_t__ FUNC1 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct cpt_device *cpt)
{
	u64 bist;
	struct device *dev = &cpt->pdev->dev;

	/* Reset the PF when probed first */
	FUNC4(cpt);
	FUNC6(100);

	/*Check BIST status*/
	bist = (u64)FUNC0(cpt);
	if (bist) {
		FUNC5(dev, "RAM BIST failed with code 0x%llx", bist);
		return -ENODEV;
	}

	bist = FUNC1(cpt);
	if (bist) {
		FUNC5(dev, "Engine BIST failed with code 0x%llx", bist);
		return -ENODEV;
	}

	/*Get CLK frequency*/
	/*Get max enabled cores */
	FUNC3(cpt);
	/*Disable all cores*/
	FUNC2(cpt);
	/*Reset device parameters*/
	cpt->next_mc_idx   = 0;
	cpt->next_group = 0;
	/* PF is ready */
	cpt->flags |= CPT_FLAG_DEVICE_READY;

	return 0;
}