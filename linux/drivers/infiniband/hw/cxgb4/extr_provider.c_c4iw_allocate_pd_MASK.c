#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uresp ;
typedef  int /*<<< orphan*/  u32 ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
struct c4iw_pd {int /*<<< orphan*/  ibpd; int /*<<< orphan*/  pdid; struct c4iw_dev* rhp; } ;
struct TYPE_6__ {scalar_t__ cur; scalar_t__ max; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_2__ pd; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdid_table; } ;
struct TYPE_8__ {TYPE_3__ stats; TYPE_1__ resource; } ;
struct c4iw_dev {TYPE_4__ rdev; } ;
struct c4iw_alloc_pd_resp {int /*<<< orphan*/  pdid; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ib_udata*,struct c4iw_alloc_pd_resp*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 struct c4iw_pd* FUNC6 (struct ib_pd*) ; 

__attribute__((used)) static int FUNC7(struct ib_pd *pd, struct ib_udata *udata)
{
	struct c4iw_pd *php = FUNC6(pd);
	struct ib_device *ibdev = pd->device;
	u32 pdid;
	struct c4iw_dev *rhp;

	FUNC5("ibdev %p\n", ibdev);
	rhp = (struct c4iw_dev *) ibdev;
	pdid =  FUNC1(&rhp->rdev.resource.pdid_table);
	if (!pdid)
		return -EINVAL;

	php->pdid = pdid;
	php->rhp = rhp;
	if (udata) {
		struct c4iw_alloc_pd_resp uresp = {.pdid = php->pdid};

		if (FUNC2(udata, &uresp, sizeof(uresp))) {
			FUNC0(&php->ibpd, udata);
			return -EFAULT;
		}
	}
	FUNC3(&rhp->rdev.stats.lock);
	rhp->rdev.stats.pd.cur++;
	if (rhp->rdev.stats.pd.cur > rhp->rdev.stats.pd.max)
		rhp->rdev.stats.pd.max = rhp->rdev.stats.pd.cur;
	FUNC4(&rhp->rdev.stats.lock);
	FUNC5("pdid 0x%0x ptr 0x%p\n", pdid, php);
	return 0;
}