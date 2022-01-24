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
struct rvt_dev_info {int /*<<< orphan*/  n_pds_lock; int /*<<< orphan*/  n_pds_allocated; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct rvt_dev_info *dev = FUNC0(ibpd->device);

	FUNC1(&dev->n_pds_lock);
	dev->n_pds_allocated--;
	FUNC2(&dev->n_pds_lock);
}