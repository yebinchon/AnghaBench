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
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct efa_pd {int /*<<< orphan*/  pdn; } ;
struct efa_dev {int /*<<< orphan*/  ibdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efa_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct efa_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct efa_pd* FUNC3 (struct ib_pd*) ; 

void FUNC4(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct efa_dev *dev = FUNC2(ibpd->device);
	struct efa_pd *pd = FUNC3(ibpd);

	FUNC1(&dev->ibdev, "Dealloc pd[%d]\n", pd->pdn);
	FUNC0(dev, pd->pdn);
}