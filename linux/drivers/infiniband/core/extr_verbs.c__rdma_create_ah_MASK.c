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
typedef  int u32 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  usecnt; struct ib_device* device; } ;
struct TYPE_2__ {int (* create_ah ) (struct ib_ah*,struct rdma_ah_attr*,int,struct ib_udata*) ;} ;
struct ib_device {TYPE_1__ ops; } ;
struct ib_ah {int /*<<< orphan*/  sgid_attr; int /*<<< orphan*/  type; struct ib_pd* pd; struct ib_device* device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct ib_ah* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RDMA_CREATE_AH_SLEEPABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_ah ; 
 int /*<<< orphan*/  FUNC2 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ *) ; 
 struct ib_ah* FUNC5 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ib_ah*,struct rdma_ah_attr*,int,struct ib_udata*) ; 

__attribute__((used)) static struct ib_ah *FUNC7(struct ib_pd *pd,
				     struct rdma_ah_attr *ah_attr,
				     u32 flags,
				     struct ib_udata *udata)
{
	struct ib_device *device = pd->device;
	struct ib_ah *ah;
	int ret;

	FUNC3(flags & RDMA_CREATE_AH_SLEEPABLE);

	if (!device->ops.create_ah)
		return FUNC0(-EOPNOTSUPP);

	ah = FUNC5(
		device, ib_ah,
		(flags & RDMA_CREATE_AH_SLEEPABLE) ? GFP_KERNEL : GFP_ATOMIC);
	if (!ah)
		return FUNC0(-ENOMEM);

	ah->device = device;
	ah->pd = pd;
	ah->type = ah_attr->type;
	ah->sgid_attr = FUNC4(ah_attr, NULL);

	ret = device->ops.create_ah(ah, ah_attr, flags, udata);
	if (ret) {
		FUNC2(ah);
		return FUNC0(ret);
	}

	FUNC1(&pd->usecnt);
	return ah;
}