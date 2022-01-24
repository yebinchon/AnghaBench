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
typedef  size_t u16 ;
struct pasid_state {int /*<<< orphan*/  lock; TYPE_1__* pri; int /*<<< orphan*/  pasid; } ;
struct device_state {int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {int finish; int /*<<< orphan*/  status; int /*<<< orphan*/  inflight; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct device_state *dev_state,
			   struct pasid_state *pasid_state,
			   u16 tag)
{
	unsigned long flags;

	FUNC2(&pasid_state->lock, flags);
	if (FUNC1(&pasid_state->pri[tag].inflight) &&
	    pasid_state->pri[tag].finish) {
		FUNC0(dev_state->pdev, pasid_state->pasid,
				       pasid_state->pri[tag].status, tag);
		pasid_state->pri[tag].finish = false;
		pasid_state->pri[tag].status = PPR_SUCCESS;
	}
	FUNC3(&pasid_state->lock, flags);
}