#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int access_flags; } ;
struct ib_mr {int dummy; } ;
struct rvt_mr {TYPE_1__ mr; struct ib_mr ibmr; } ;
struct ib_pd {int dummy; } ;
struct TYPE_6__ {scalar_t__ user; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_4__* FUNC1 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_mr*) ; 
 struct rvt_mr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,struct ib_pd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC7(struct ib_pd *pd, int acc)
{
	struct rvt_mr *mr;
	struct ib_mr *ret;
	int rval;

	if (FUNC1(pd)->user)
		return FUNC0(-EPERM);

	mr = FUNC3(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		ret = FUNC0(-ENOMEM);
		goto bail;
	}

	rval = FUNC6(&mr->mr, pd, 0, 0);
	if (rval) {
		ret = FUNC0(rval);
		goto bail;
	}

	rval = FUNC4(&mr->mr, 1);
	if (rval) {
		ret = FUNC0(rval);
		goto bail_mregion;
	}

	mr->mr.access_flags = acc;
	ret = &mr->ibmr;
done:
	return ret;

bail_mregion:
	FUNC5(&mr->mr);
bail:
	FUNC2(mr);
	goto done;
}