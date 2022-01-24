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
struct ib_xrcd {int /*<<< orphan*/  tgt_qp_list; int /*<<< orphan*/  tgt_qp_mutex; int /*<<< orphan*/  usecnt; int /*<<< orphan*/ * inode; struct ib_device* device; } ;
struct TYPE_2__ {struct ib_xrcd* (* alloc_xrcd ) (struct ib_device*,int /*<<< orphan*/ *) ;} ;
struct ib_device {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct ib_xrcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_xrcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ib_xrcd* FUNC5 (struct ib_device*,int /*<<< orphan*/ *) ; 

struct ib_xrcd *FUNC6(struct ib_device *device, const char *caller)
{
	struct ib_xrcd *xrcd;

	if (!device->ops.alloc_xrcd)
		return FUNC0(-EOPNOTSUPP);

	xrcd = device->ops.alloc_xrcd(device, NULL);
	if (!FUNC2(xrcd)) {
		xrcd->device = device;
		xrcd->inode = NULL;
		FUNC3(&xrcd->usecnt, 0);
		FUNC4(&xrcd->tgt_qp_mutex);
		FUNC1(&xrcd->tgt_qp_list);
	}

	return xrcd;
}