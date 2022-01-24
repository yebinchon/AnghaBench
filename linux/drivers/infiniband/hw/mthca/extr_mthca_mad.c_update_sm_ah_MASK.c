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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct mthca_dev {int /*<<< orphan*/  sm_lock; struct ib_ah** sm_ah; TYPE_2__*** send_agent; int /*<<< orphan*/  ib_dev; } ;
struct ib_ah {int dummy; } ;
struct TYPE_4__ {TYPE_1__* qp; } ;
struct TYPE_3__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int) ; 
 struct ib_ah* FUNC6 (int /*<<< orphan*/ ,struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_ah*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct mthca_dev *dev,
			 u8 port_num, u16 lid, u8 sl)
{
	struct ib_ah *new_ah;
	struct rdma_ah_attr ah_attr;
	unsigned long flags;

	if (!dev->send_agent[port_num - 1][0])
		return;

	FUNC1(&ah_attr, 0, sizeof ah_attr);
	ah_attr.type = FUNC2(&dev->ib_dev, port_num);
	FUNC3(&ah_attr, lid);
	FUNC5(&ah_attr, sl);
	FUNC4(&ah_attr, port_num);

	new_ah = FUNC6(dev->send_agent[port_num - 1][0]->qp->pd,
				&ah_attr, 0);
	if (FUNC0(new_ah))
		return;

	FUNC8(&dev->sm_lock, flags);
	if (dev->sm_ah[port_num - 1])
		FUNC7(dev->sm_ah[port_num - 1], 0);
	dev->sm_ah[port_num - 1] = new_ah;
	FUNC9(&dev->sm_lock, flags);
}