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
struct ocrdma_pd {int /*<<< orphan*/  dpp_enabled; int /*<<< orphan*/  id; } ;
struct ocrdma_dev {TYPE_1__* pd_mgr; } ;
struct TYPE_2__ {scalar_t__ pd_prealloc_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dev*,struct ocrdma_pd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ocrdma_dev *dev,
			      struct ocrdma_pd *pd)
{
	if (dev->pd_mgr->pd_prealloc_valid)
		FUNC1(dev, pd->id, pd->dpp_enabled);
	else
		FUNC0(dev, pd);
}