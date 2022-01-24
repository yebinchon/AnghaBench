#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  (* notify_new_ah ) (int /*<<< orphan*/ ,struct rdma_ah_attr*,struct rvt_ah*) ;} ;
struct TYPE_4__ {scalar_t__ max_ah; } ;
struct TYPE_5__ {TYPE_1__ props; } ;
struct rvt_dev_info {scalar_t__ n_ahs_allocated; TYPE_3__ driver_f; int /*<<< orphan*/  n_ahs_lock; TYPE_2__ dparms; } ;
struct rvt_ah {int /*<<< orphan*/  attr; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_ah {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rvt_ah* FUNC1 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rdma_ah_attr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct rdma_ah_attr*,struct rvt_ah*) ; 

int FUNC7(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr,
		  u32 create_flags, struct ib_udata *udata)
{
	struct rvt_ah *ah = FUNC1(ibah);
	struct rvt_dev_info *dev = FUNC0(ibah->device);
	unsigned long flags;

	if (FUNC3(ibah->device, ah_attr))
		return -EINVAL;

	FUNC4(&dev->n_ahs_lock, flags);
	if (dev->n_ahs_allocated == dev->dparms.props.max_ah) {
		FUNC5(&dev->n_ahs_lock, flags);
		return -ENOMEM;
	}

	dev->n_ahs_allocated++;
	FUNC5(&dev->n_ahs_lock, flags);

	FUNC2(&ah->attr, ah_attr);

	if (dev->driver_f.notify_new_ah)
		dev->driver_f.notify_new_ah(ibah->device, ah_attr, ah);

	return 0;
}