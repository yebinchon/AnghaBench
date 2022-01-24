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
struct mox_rwtm {TYPE_1__* kobj; } ;
struct TYPE_2__ {struct mox_rwtm* rwtm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  firmware_kobj ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mox_kobj_ktype ; 
 int /*<<< orphan*/  FUNC4 (struct mox_rwtm*) ; 

__attribute__((used)) static int FUNC5(struct mox_rwtm *rwtm)
{
	rwtm->kobj = FUNC3(sizeof(*rwtm->kobj), GFP_KERNEL);
	if (!rwtm->kobj)
		return -ENOMEM;

	FUNC1(FUNC4(rwtm), &mox_kobj_ktype);
	if (FUNC0(FUNC4(rwtm), firmware_kobj, "turris-mox-rwtm")) {
		FUNC2(FUNC4(rwtm));
		return -ENXIO;
	}

	rwtm->kobj->rwtm = rwtm;

	return 0;
}