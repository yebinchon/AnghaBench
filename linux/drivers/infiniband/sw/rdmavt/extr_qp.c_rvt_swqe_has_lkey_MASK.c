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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int num_sge; } ;
struct rvt_swqe {struct rvt_sge* sg_list; TYPE_1__ wr; } ;
struct rvt_sge {int /*<<< orphan*/  mr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct rvt_swqe *wqe, u32 lkey)
{
	int i;

	for (i = 0; i < wqe->wr.num_sge; i++) {
		struct rvt_sge *sge = &wqe->sg_list[i];

		if (FUNC0(sge->mr, lkey))
			return true;
	}
	return false;
}