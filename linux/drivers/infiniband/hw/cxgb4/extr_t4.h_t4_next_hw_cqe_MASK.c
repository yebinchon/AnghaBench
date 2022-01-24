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
typedef  size_t u16 ;
struct t4_cqe {scalar_t__ bits_type_ts; } ;
struct t4_cq {int cidx; size_t size; scalar_t__ bits_type_ts; int error; struct t4_cqe* queue; int /*<<< orphan*/  cqid; } ;

/* Variables and functions */
 int ENODATA ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct t4_cq*,struct t4_cqe*) ; 

__attribute__((used)) static inline int FUNC3(struct t4_cq *cq, struct t4_cqe **cqe)
{
	int ret;
	u16 prev_cidx;

	if (cq->cidx == 0)
		prev_cidx = cq->size - 1;
	else
		prev_cidx = cq->cidx - 1;

	if (cq->queue[prev_cidx].bits_type_ts != cq->bits_type_ts) {
		ret = -EOVERFLOW;
		cq->error = 1;
		FUNC0("cq overflow cqid %u\n", cq->cqid);
	} else if (FUNC2(cq, &cq->queue[cq->cidx])) {

		/* Ensure CQE is flushed to memory */
		FUNC1();
		*cqe = &cq->queue[cq->cidx];
		ret = 0;
	} else
		ret = -ENODATA;
	return ret;
}