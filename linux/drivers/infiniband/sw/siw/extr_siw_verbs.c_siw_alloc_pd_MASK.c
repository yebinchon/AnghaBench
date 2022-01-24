#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct siw_device {int /*<<< orphan*/  num_pd; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ SIW_MAX_PD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_pd*,char*,int /*<<< orphan*/ ) ; 
 struct siw_device* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct ib_pd *pd, struct ib_udata *udata)
{
	struct siw_device *sdev = FUNC4(pd->device);

	if (FUNC1(&sdev->num_pd) > SIW_MAX_PD) {
		FUNC0(&sdev->num_pd);
		return -ENOMEM;
	}
	FUNC3(pd, "now %d PD's(s)\n", FUNC2(&sdev->num_pd));

	return 0;
}