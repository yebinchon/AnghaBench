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
struct qib_user_info {unsigned int spu_subctxt_cnt; int spu_userversion; int /*<<< orphan*/  spu_subctxt_id; } ;
struct qib_devdata {int rcvhdrcnt; int rcvhdrentsize; int /*<<< orphan*/  pcidev; } ;
struct qib_ctxtdata {unsigned int rcvegrbuf_chunks; unsigned int rcvegrbuf_size; unsigned int subctxt_cnt; int active_slaves; int redirect_seq_cnt; int /*<<< orphan*/ * subctxt_uregbase; int /*<<< orphan*/ * subctxt_rcvhdr_base; int /*<<< orphan*/  flag; int /*<<< orphan*/  subctxt_id; void* subctxt_rcvegrbuf; } ;

/* Variables and functions */
 unsigned int FUNC0 (int,unsigned int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  QIB_CTXT_MASTER_UNINIT ; 
 int /*<<< orphan*/  QIB_USER_SWMAJOR ; 
 int /*<<< orphan*/  QIB_USER_SWMINOR ; 
 unsigned int QLOGIC_IB_MAX_SUBCTXT ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (unsigned int) ; 

__attribute__((used)) static int FUNC6(struct qib_devdata *dd,
			 struct qib_ctxtdata *rcd,
			 const struct qib_user_info *uinfo)
{
	int ret = 0;
	unsigned num_subctxts;
	size_t size;

	/*
	 * If the user is requesting zero subctxts,
	 * skip the subctxt allocation.
	 */
	if (uinfo->spu_subctxt_cnt <= 0)
		goto bail;
	num_subctxts = uinfo->spu_subctxt_cnt;

	/* Check for subctxt compatibility */
	if (!FUNC1(uinfo->spu_userversion >> 16,
		uinfo->spu_userversion & 0xffff)) {
		FUNC2(dd->pcidev,
			 "Mismatched user version (%d.%d) and driver version (%d.%d) while context sharing. Ensure that driver and library are from the same release.\n",
			 (int) (uinfo->spu_userversion >> 16),
			 (int) (uinfo->spu_userversion & 0xffff),
			 QIB_USER_SWMAJOR, QIB_USER_SWMINOR);
		goto bail;
	}
	if (num_subctxts > QLOGIC_IB_MAX_SUBCTXT) {
		ret = -EINVAL;
		goto bail;
	}

	rcd->subctxt_uregbase = FUNC5(PAGE_SIZE * num_subctxts);
	if (!rcd->subctxt_uregbase) {
		ret = -ENOMEM;
		goto bail;
	}
	/* Note: rcd->rcvhdrq_size isn't initialized yet. */
	size = FUNC0(dd->rcvhdrcnt * dd->rcvhdrentsize *
		     sizeof(u32), PAGE_SIZE) * num_subctxts;
	rcd->subctxt_rcvhdr_base = FUNC5(size);
	if (!rcd->subctxt_rcvhdr_base) {
		ret = -ENOMEM;
		goto bail_ureg;
	}

	rcd->subctxt_rcvegrbuf = FUNC5(rcd->rcvegrbuf_chunks *
					      rcd->rcvegrbuf_size *
					      num_subctxts);
	if (!rcd->subctxt_rcvegrbuf) {
		ret = -ENOMEM;
		goto bail_rhdr;
	}

	rcd->subctxt_cnt = uinfo->spu_subctxt_cnt;
	rcd->subctxt_id = uinfo->spu_subctxt_id;
	rcd->active_slaves = 1;
	rcd->redirect_seq_cnt = 1;
	FUNC3(QIB_CTXT_MASTER_UNINIT, &rcd->flag);
	goto bail;

bail_rhdr:
	FUNC4(rcd->subctxt_rcvhdr_base);
bail_ureg:
	FUNC4(rcd->subctxt_uregbase);
	rcd->subctxt_uregbase = NULL;
bail:
	return ret;
}