#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  count; } ;
struct rvt_mregion {TYPE_1__ refcount; scalar_t__ lkey; TYPE_2__* pd; int /*<<< orphan*/  comp; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rvt_dev_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_mregion*) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_mregion*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_dev_info*,char*,char const*,struct rvt_mregion*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct rvt_mregion *mr, const char *t)
{
	unsigned long timeout;
	struct rvt_dev_info *rdi = FUNC1(mr->pd->device);

	if (mr->lkey) {
		/* avoid dma mr */
		FUNC2(mr);
		/* @mr was indexed on rcu protected @lkey_table */
		FUNC5();
	}

	timeout = FUNC6(&mr->comp, 5 * HZ);
	if (!timeout) {
		FUNC4(rdi,
			   "%s timeout mr %p pd %p lkey %x refcount %ld\n",
			   t, mr, mr->pd, mr->lkey,
			   FUNC0(&mr->refcount.count));
		FUNC3(mr);
		return -EBUSY;
	}
	return 0;
}