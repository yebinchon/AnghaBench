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
typedef  int /*<<< orphan*/  u32 ;
struct qman_fq {scalar_t__ state; int flags; int fqid; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int QMAN_FQ_STATE_BLOCKOOS ; 
 int QMAN_FQ_STATE_NE ; 
 int QMAN_FQ_STATE_ORL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct device*,struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC3 (struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct qman_fq*) ; 
 scalar_t__ qman_fq_state_retired ; 
 int FUNC6 (struct qman_fq*) ; 
 int FUNC7 (struct qman_fq*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct device *qidev, struct qman_fq *fq)
{
	u32 flags;
	int ret;

	ret = FUNC7(fq, &flags);
	if (ret < 0) {
		FUNC1(qidev, "qman_retire_fq failed: %d\n", ret);
		return ret;
	}

	if (!ret)
		goto empty_fq;

	/* Async FQ retirement condition */
	if (ret == 1) {
		/* Retry till FQ gets in retired state */
		do {
			FUNC4(20);
		} while (fq->state != qman_fq_state_retired);

		FUNC0(fq->flags & QMAN_FQ_STATE_BLOCKOOS);
		FUNC0(fq->flags & QMAN_FQ_STATE_ORL);
	}

empty_fq:
	if (fq->flags & QMAN_FQ_STATE_NE) {
		ret = FUNC2(qidev, fq);
		if (ret) {
			FUNC1(qidev, "empty_retired_fq fail for FQ: %u\n",
				fq->fqid);
			return ret;
		}
	}

	ret = FUNC6(fq);
	if (ret)
		FUNC1(qidev, "OOS of FQID: %u failed\n", fq->fqid);

	FUNC5(fq);
	FUNC3(fq);

	return ret;
}