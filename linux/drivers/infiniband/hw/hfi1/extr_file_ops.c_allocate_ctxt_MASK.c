#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hfi1_user_info {int /*<<< orphan*/  uuid; int /*<<< orphan*/  userversion; scalar_t__ subctxt_cnt; } ;
struct hfi1_filedata {int rec_cpu_num; int /*<<< orphan*/  subctxt; } ;
struct hfi1_devdata {int flags; scalar_t__ num_user_contexts; int /*<<< orphan*/  freectxts; int /*<<< orphan*/  node; int /*<<< orphan*/  pport; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  jkey; int /*<<< orphan*/  uuid; int /*<<< orphan*/  comm; int /*<<< orphan*/  wait; int /*<<< orphan*/  flags; int /*<<< orphan*/  userversion; int /*<<< orphan*/  in_use_ctxts; TYPE_1__* sc; int /*<<< orphan*/  rcvhdrqentsize; int /*<<< orphan*/  numa_id; int /*<<< orphan*/  ctxt; } ;
struct TYPE_7__ {int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; } ;
struct TYPE_6__ {int /*<<< orphan*/  sps_ctxts; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw_context; int /*<<< orphan*/  sw_index; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int HFI1_FROZEN ; 
 int /*<<< orphan*/  PROC ; 
 int /*<<< orphan*/  SC_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int FUNC2 (int) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hfi1_cap_mask ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,struct hfi1_ctxtdata**) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_ctxtdata*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__ hfi1_stats ; 
 int /*<<< orphan*/  FUNC10 (struct hfi1_ctxtdata*,struct hfi1_user_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 () ; 
 TYPE_1__* FUNC14 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct hfi1_filedata *fd, struct hfi1_devdata *dd,
			 struct hfi1_user_info *uinfo,
			 struct hfi1_ctxtdata **rcd)
{
	struct hfi1_ctxtdata *uctxt;
	int ret, numa;

	if (dd->flags & HFI1_FROZEN) {
		/*
		 * Pick an error that is unique from all other errors
		 * that are returned so the user process knows that
		 * it tried to allocate while the SPC was frozen.  It
		 * it should be able to retry with success in a short
		 * while.
		 */
		return -EIO;
	}

	if (!dd->freectxts)
		return -EBUSY;

	/*
	 * If we don't have a NUMA node requested, preference is towards
	 * device NUMA node.
	 */
	fd->rec_cpu_num = FUNC9(dd->node);
	if (fd->rec_cpu_num != -1)
		numa = FUNC2(fd->rec_cpu_num);
	else
		numa = FUNC13();
	ret = FUNC7(dd->pport, numa, &uctxt);
	if (ret < 0) {
		FUNC4(dd, "user ctxtdata allocation failed\n");
		return ret;
	}
	FUNC6(PROC, "[%u:%u] pid %u assigned to CPU %d (NUMA %u)",
		  uctxt->ctxt, fd->subctxt, current->pid, fd->rec_cpu_num,
		  uctxt->numa_id);

	/*
	 * Allocate and enable a PIO send context.
	 */
	uctxt->sc = FUNC14(dd, SC_USER, uctxt->rcvhdrqentsize, dd->node);
	if (!uctxt->sc) {
		ret = -ENOMEM;
		goto ctxdata_free;
	}
	FUNC6(PROC, "allocated send context %u(%u)\n", uctxt->sc->sw_index,
		  uctxt->sc->hw_context);
	ret = FUNC15(uctxt->sc);
	if (ret)
		goto ctxdata_free;

	/*
	 * Setup sub context information if the user-level has requested
	 * sub contexts.
	 * This has to be done here so the rest of the sub-contexts find the
	 * proper base context.
	 * NOTE: _set_bit() can be used here because the context creation is
	 * protected by the mutex (rather than the spin_lock), and will be the
	 * very first instance of this context.
	 */
	FUNC0(0, uctxt->in_use_ctxts);
	if (uinfo->subctxt_cnt)
		FUNC10(uctxt, uinfo);
	uctxt->userversion = uinfo->userversion;
	uctxt->flags = hfi1_cap_mask; /* save current flag state */
	FUNC11(&uctxt->wait);
	FUNC16(uctxt->comm, current->comm, sizeof(uctxt->comm));
	FUNC12(uctxt->uuid, uinfo->uuid, sizeof(uctxt->uuid));
	uctxt->jkey = FUNC5(FUNC3());
	hfi1_stats.sps_ctxts++;
	/*
	 * Disable ASPM when there are open user/PSM contexts to avoid
	 * issues with ASPM L1 exit latency
	 */
	if (dd->freectxts-- == dd->num_user_contexts)
		FUNC1(dd);

	*rcd = uctxt;

	return 0;

ctxdata_free:
	FUNC8(uctxt);
	return ret;
}