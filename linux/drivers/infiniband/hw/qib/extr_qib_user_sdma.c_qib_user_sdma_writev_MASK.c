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
struct qib_user_sdma_queue {scalar_t__ added; int counter; int /*<<< orphan*/  lock; scalar_t__ num_sending; } ;
struct qib_pportdata {scalar_t__ sdma_descq_removed; } ;
struct qib_devdata {TYPE_1__* pcidev; } ;
struct qib_ctxtdata {struct qib_pportdata* ppd; struct qib_devdata* dd; } ;
struct list_head {int dummy; } ;
struct iovec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct qib_user_sdma_queue*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_pportdata*) ; 
 int FUNC8 (struct qib_pportdata*,struct qib_user_sdma_queue*,struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*,struct qib_user_sdma_queue*) ; 
 int FUNC10 (struct qib_devdata*,struct qib_pportdata*,struct qib_user_sdma_queue*,struct iovec const*,unsigned long,struct list_head*,int*,int*) ; 

int FUNC11(struct qib_ctxtdata *rcd,
			 struct qib_user_sdma_queue *pq,
			 const struct iovec *iov,
			 unsigned long dim)
{
	struct qib_devdata *dd = rcd->dd;
	struct qib_pportdata *ppd = rcd->ppd;
	int ret = 0;
	struct list_head list;
	int npkts = 0;

	FUNC0(&list);

	FUNC2(&pq->lock);

	/* why not -ECOMM like qib_user_sdma_push_pkts() below? */
	if (!FUNC5(ppd))
		goto done_unlock;

	/* if I have packets not complete yet */
	if (pq->added > ppd->sdma_descq_removed)
		FUNC7(ppd);
	/* if I have complete packets to be freed */
	if (pq->num_sending)
		FUNC9(ppd, pq);

	while (dim) {
		int mxp = 1;
		int ndesc = 0;

		ret = FUNC10(dd, ppd, pq,
				iov, dim, &list, &mxp, &ndesc);
		if (ret < 0)
			goto done_unlock;
		else {
			dim -= ret;
			iov += ret;
		}

		/* force packets onto the sdma hw queue... */
		if (!FUNC1(&list)) {
			/*
			 * Lazily clean hw queue.
			 */
			if (FUNC4(ppd) < ndesc) {
				FUNC7(ppd);
				if (pq->num_sending)
					FUNC9(ppd, pq);
			}

			ret = FUNC8(ppd, pq, &list, mxp);
			if (ret < 0)
				goto done_unlock;
			else {
				npkts += mxp;
				pq->counter += mxp;
			}
		}
	}

done_unlock:
	if (!FUNC1(&list))
		FUNC6(&dd->pcidev->dev, pq, &list);
	FUNC3(&pq->lock);

	return (ret < 0) ? ret : npkts;
}