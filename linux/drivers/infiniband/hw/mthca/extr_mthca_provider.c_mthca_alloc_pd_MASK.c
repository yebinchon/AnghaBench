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
struct mthca_pd {int /*<<< orphan*/  pd_num; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct mthca_pd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mthca_pd*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*) ; 
 struct mthca_pd* FUNC4 (struct ib_pd*) ; 

__attribute__((used)) static int FUNC5(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct ib_device *ibdev = ibpd->device;
	struct mthca_pd *pd = FUNC4(ibpd);
	int err;

	err = FUNC1(FUNC3(ibdev), !udata, pd);
	if (err)
		return err;

	if (udata) {
		if (FUNC0(udata, &pd->pd_num, sizeof (__u32))) {
			FUNC2(FUNC3(ibdev), pd);
			return -EFAULT;
		}
	}

	return 0;
}