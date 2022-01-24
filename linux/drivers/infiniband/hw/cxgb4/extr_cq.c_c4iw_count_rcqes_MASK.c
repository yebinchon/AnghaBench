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
typedef  size_t u32 ;
struct TYPE_2__ {scalar_t__ qid; } ;
struct t4_wq {TYPE_1__ sq; } ;
struct t4_cqe {int dummy; } ;
struct t4_cq {size_t sw_cidx; size_t sw_pidx; size_t size; struct t4_cqe* sw_queue; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct t4_cqe*) ; 
 scalar_t__ FUNC1 (struct t4_cqe*) ; 
 scalar_t__ FW_RI_READ_RESP ; 
 scalar_t__ FUNC2 (struct t4_cqe*) ; 
 scalar_t__ FUNC3 (struct t4_cqe*,struct t4_wq*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void FUNC5(struct t4_cq *cq, struct t4_wq *wq, int *count)
{
	struct t4_cqe *cqe;
	u32 ptr;

	*count = 0;
	FUNC4("count zero %d\n", *count);
	ptr = cq->sw_cidx;
	while (ptr != cq->sw_pidx) {
		cqe = &cq->sw_queue[ptr];
		if (FUNC2(cqe) && (FUNC0(cqe) != FW_RI_READ_RESP) &&
		    (FUNC1(cqe) == wq->sq.qid) && FUNC3(cqe, wq))
			(*count)++;
		if (++ptr == cq->size)
			ptr = 0;
	}
	FUNC4("cq %p count %d\n", cq, *count);
}