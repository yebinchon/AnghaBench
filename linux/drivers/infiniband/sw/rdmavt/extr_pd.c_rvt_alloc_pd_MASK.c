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
struct rvt_pd {int user; } ;
struct TYPE_3__ {scalar_t__ max_pd; } ;
struct TYPE_4__ {TYPE_1__ props; } ;
struct rvt_dev_info {scalar_t__ n_pds_allocated; int /*<<< orphan*/  n_pds_lock; TYPE_2__ dparms; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rvt_dev_info* FUNC0 (struct ib_device*) ; 
 struct rvt_pd* FUNC1 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct ib_device *ibdev = ibpd->device;
	struct rvt_dev_info *dev = FUNC0(ibdev);
	struct rvt_pd *pd = FUNC1(ibpd);
	int ret = 0;

	/*
	 * While we could continue allocating protecetion domains, being
	 * constrained only by system resources. The IBTA spec defines that
	 * there is a max_pd limit that can be set and we need to check for
	 * that.
	 */

	FUNC2(&dev->n_pds_lock);
	if (dev->n_pds_allocated == dev->dparms.props.max_pd) {
		FUNC3(&dev->n_pds_lock);
		ret = -ENOMEM;
		goto bail;
	}

	dev->n_pds_allocated++;
	FUNC3(&dev->n_pds_lock);

	/* ib_alloc_pd() will initialize pd->ibpd. */
	pd->user = !!udata;

bail:
	return ret;
}