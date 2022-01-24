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
struct ib_ah {TYPE_1__* pd; } ;
struct efa_dev {int /*<<< orphan*/  ibdev; } ;
struct efa_ah {int /*<<< orphan*/  ah; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int RDMA_DESTROY_AH_SLEEPABLE ; 
 int /*<<< orphan*/  FUNC0 (struct efa_dev*,struct efa_ah*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct efa_ah* FUNC2 (struct ib_ah*) ; 
 struct efa_dev* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ib_ah *ibah, u32 flags)
{
	struct efa_dev *dev = FUNC3(ibah->pd->device);
	struct efa_ah *ah = FUNC2(ibah);

	FUNC1(&dev->ibdev, "Destroy ah[%d]\n", ah->ah);

	if (!(flags & RDMA_DESTROY_AH_SLEEPABLE)) {
		FUNC1(&dev->ibdev,
			  "Destroy address handle is not supported in atomic context\n");
		return;
	}

	FUNC0(dev, ah);
}