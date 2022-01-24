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
struct TYPE_2__ {int num_ports; } ;
struct mthca_dev {scalar_t__* sm_ah; struct ib_mad_agent*** send_agent; TYPE_1__ limits; } ;
struct ib_mad_agent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDMA_DESTROY_AH_SLEEPABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_mad_agent*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(struct mthca_dev *dev)
{
	struct ib_mad_agent *agent;
	int p, q;

	for (p = 0; p < dev->limits.num_ports; ++p) {
		for (q = 0; q <= 1; ++q) {
			agent = dev->send_agent[p][q];
			dev->send_agent[p][q] = NULL;
			FUNC0(agent);
		}

		if (dev->sm_ah[p])
			FUNC1(dev->sm_ah[p],
					RDMA_DESTROY_AH_SLEEPABLE);
	}
}