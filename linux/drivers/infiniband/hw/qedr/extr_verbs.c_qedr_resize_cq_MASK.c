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
struct qedr_dev {int dummy; } ;
struct qedr_cq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*,struct qedr_cq*) ; 
 struct qedr_cq* FUNC1 (struct ib_cq*) ; 
 struct qedr_dev* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct ib_cq *ibcq, int new_cnt, struct ib_udata *udata)
{
	struct qedr_dev *dev = FUNC2(ibcq->device);
	struct qedr_cq *cq = FUNC1(ibcq);

	FUNC0(dev, "cq %p RESIZE NOT SUPPORTED\n", cq);

	return 0;
}