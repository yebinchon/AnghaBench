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
typedef  scalar_t__ u16 ;
struct hfi1_user_info {scalar_t__ subctxt_id; scalar_t__ subctxt_cnt; scalar_t__ userversion; int /*<<< orphan*/  uuid; } ;
struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; scalar_t__ subctxt; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int /*<<< orphan*/  uctxt_lock; } ;
struct hfi1_ctxtdata {scalar_t__ jkey; scalar_t__ subctxt_id; scalar_t__ subctxt_cnt; scalar_t__ userversion; int /*<<< orphan*/  in_use_ctxts; int /*<<< orphan*/  uuid; TYPE_1__* sc; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  HFI1_MAX_SHARED_CTXTS ; 
 scalar_t__ SC_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_ctxtdata*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct hfi1_filedata *fd,
		      const struct hfi1_user_info *uinfo,
		      struct hfi1_ctxtdata *uctxt)
{
	struct hfi1_devdata *dd = fd->dd;
	unsigned long flags;
	u16 subctxt;

	/* Skip dynamically allocated kernel contexts */
	if (uctxt->sc && (uctxt->sc->type == SC_KERNEL))
		return 0;

	/* Skip ctxt if it doesn't match the requested one */
	if (FUNC6(uctxt->uuid, uinfo->uuid, sizeof(uctxt->uuid)) ||
	    uctxt->jkey != FUNC4(FUNC2()) ||
	    uctxt->subctxt_id != uinfo->subctxt_id ||
	    uctxt->subctxt_cnt != uinfo->subctxt_cnt)
		return 0;

	/* Verify the sharing process matches the base */
	if (uctxt->userversion != uinfo->userversion)
		return -EINVAL;

	/* Find an unused sub context */
	FUNC7(&dd->uctxt_lock, flags);
	if (FUNC1(uctxt->in_use_ctxts, HFI1_MAX_SHARED_CTXTS)) {
		/* context is being closed, do not use */
		FUNC8(&dd->uctxt_lock, flags);
		return 0;
	}

	subctxt = FUNC3(uctxt->in_use_ctxts,
				      HFI1_MAX_SHARED_CTXTS);
	if (subctxt >= uctxt->subctxt_cnt) {
		FUNC8(&dd->uctxt_lock, flags);
		return -EBUSY;
	}

	fd->subctxt = subctxt;
	FUNC0(fd->subctxt, uctxt->in_use_ctxts);
	FUNC8(&dd->uctxt_lock, flags);

	fd->uctxt = uctxt;
	FUNC5(uctxt);

	return 1;
}