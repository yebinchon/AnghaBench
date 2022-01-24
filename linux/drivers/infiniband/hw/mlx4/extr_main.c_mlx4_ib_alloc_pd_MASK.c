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
struct mlx4_ib_pd {int /*<<< orphan*/  pdn; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct ib_device*) ; 
 struct mlx4_ib_pd* FUNC4 (struct ib_pd*) ; 

__attribute__((used)) static int FUNC5(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct mlx4_ib_pd *pd = FUNC4(ibpd);
	struct ib_device *ibdev = ibpd->device;
	int err;

	err = FUNC1(FUNC3(ibdev)->dev, &pd->pdn);
	if (err)
		return err;

	if (udata && FUNC0(udata, &pd->pdn, sizeof(__u32))) {
		FUNC2(FUNC3(ibdev)->dev, pd->pdn);
		return -EFAULT;
	}
	return 0;
}