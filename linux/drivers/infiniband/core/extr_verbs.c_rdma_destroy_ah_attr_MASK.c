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
struct TYPE_2__ {int /*<<< orphan*/ * sgid_attr; } ;
struct rdma_ah_attr {TYPE_1__ grh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct rdma_ah_attr *ah_attr)
{
	if (ah_attr->grh.sgid_attr) {
		FUNC0(ah_attr->grh.sgid_attr);
		ah_attr->grh.sgid_attr = NULL;
	}
}