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
struct cxio_rdev {struct cxio_hal_resource* rscp; } ;
struct cxio_hal_resource {int /*<<< orphan*/  tpt_fifo; int /*<<< orphan*/  qpid_fifo; int /*<<< orphan*/  cqid_fifo; int /*<<< orphan*/  pdid_fifo_lock; int /*<<< orphan*/  pdid_fifo; int /*<<< orphan*/  cqid_fifo_lock; int /*<<< orphan*/  tpt_fifo_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cxio_rdev*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cxio_hal_resource* FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct cxio_rdev *rdev_p,
			   u32 nr_tpt, u32 nr_pbl,
			   u32 nr_rqt, u32 nr_qpid, u32 nr_cqid, u32 nr_pdid)
{
	int err = 0;
	struct cxio_hal_resource *rscp;

	rscp = FUNC4(sizeof(*rscp), GFP_KERNEL);
	if (!rscp)
		return -ENOMEM;
	rdev_p->rscp = rscp;
	err = FUNC2(&rscp->tpt_fifo,
				      &rscp->tpt_fifo_lock,
				      nr_tpt, 1, 0);
	if (err)
		goto tpt_err;
	err = FUNC0(rdev_p);
	if (err)
		goto qpid_err;
	err = FUNC1(&rscp->cqid_fifo, &rscp->cqid_fifo_lock,
				      nr_cqid, 1, 0);
	if (err)
		goto cqid_err;
	err = FUNC1(&rscp->pdid_fifo, &rscp->pdid_fifo_lock,
				      nr_pdid, 1, 0);
	if (err)
		goto pdid_err;
	return 0;
pdid_err:
	FUNC3(&rscp->cqid_fifo);
cqid_err:
	FUNC3(&rscp->qpid_fifo);
qpid_err:
	FUNC3(&rscp->tpt_fifo);
tpt_err:
	return -ENOMEM;
}