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
struct ib_mr {int dummy; } ;
struct siw_mr {struct ib_mr base_mr; TYPE_1__* mem; } ;
struct siw_device {int /*<<< orphan*/  num_mr; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int stag_valid; int /*<<< orphan*/  stag; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SIW_MAX_MR ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_mr*) ; 
 struct siw_mr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_pd*,char*,...) ; 
 int FUNC6 (struct siw_mr*,struct ib_pd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct siw_device* FUNC7 (int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC8(struct ib_pd *pd, int rights)
{
	struct siw_device *sdev = FUNC7(pd->device);
	struct siw_mr *mr = NULL;
	int rv;

	if (FUNC2(&sdev->num_mr) > SIW_MAX_MR) {
		FUNC5(pd, "too many mr's\n");
		rv = -ENOMEM;
		goto err_out;
	}
	mr = FUNC4(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		rv = -ENOMEM;
		goto err_out;
	}
	rv = FUNC6(mr, pd, NULL, 0, ULONG_MAX, rights);
	if (rv)
		goto err_out;

	mr->mem->stag_valid = 1;

	FUNC5(pd, "[MEM %u]: success\n", mr->mem->stag);

	return &mr->base_mr;

err_out:
	if (rv)
		FUNC3(mr);

	FUNC1(&sdev->num_mr);

	return FUNC0(rv);
}