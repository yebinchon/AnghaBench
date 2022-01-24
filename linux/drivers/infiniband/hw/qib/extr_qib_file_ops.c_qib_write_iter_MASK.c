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
struct qib_user_sdma_queue {int dummy; } ;
struct qib_filedata {struct qib_user_sdma_queue* pq; } ;
struct qib_ctxtdata {int dummy; } ;
struct kiocb {TYPE_1__* ki_filp; } ;
struct iov_iter {int /*<<< orphan*/  nr_segs; int /*<<< orphan*/  iov; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {struct qib_filedata* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct qib_ctxtdata* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_ctxtdata*,struct qib_user_sdma_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct kiocb *iocb, struct iov_iter *from)
{
	struct qib_filedata *fp = iocb->ki_filp->private_data;
	struct qib_ctxtdata *rcd = FUNC0(iocb->ki_filp);
	struct qib_user_sdma_queue *pq = fp->pq;

	if (!FUNC1(from) || !from->nr_segs || !pq)
		return -EINVAL;
			 
	return FUNC2(rcd, pq, from->iov, from->nr_segs);
}