#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ib_qp {TYPE_1__* qp_sec; struct ib_qp* real_qp; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  shared_qp_list; int /*<<< orphan*/  ports_pkeys; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct ib_qp*,struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ib_qp *qp, struct ib_device *dev)
{
	struct ib_qp *real_qp = qp->real_qp;
	int ret;

	ret = FUNC2(qp, dev);

	if (ret)
		return ret;

	if (!qp->qp_sec)
		return 0;

	FUNC4(&real_qp->qp_sec->mutex);
	ret = FUNC0(real_qp->qp_sec->ports_pkeys,
					  qp->qp_sec);

	if (ret)
		goto ret;

	if (qp != real_qp)
		FUNC3(&qp->qp_sec->shared_qp_list,
			 &real_qp->qp_sec->shared_qp_list);
ret:
	FUNC5(&real_qp->qp_sec->mutex);
	if (ret)
		FUNC1(qp->qp_sec);

	return ret;
}