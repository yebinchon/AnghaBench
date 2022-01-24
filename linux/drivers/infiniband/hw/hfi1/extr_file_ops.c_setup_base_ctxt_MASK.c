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
struct hfi1_filedata {struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  wait; int /*<<< orphan*/  event_flags; scalar_t__ subctxt_cnt; int /*<<< orphan*/  sc; struct hfi1_devdata* dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_CTXT_BASE_FAILED ; 
 int /*<<< orphan*/  HFI1_CTXT_BASE_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hfi1_ctxtdata*) ; 
 int FUNC2 (struct hfi1_devdata*,struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_ctxtdata*) ; 
 int FUNC5 (struct hfi1_ctxtdata*) ; 
 int FUNC6 (struct hfi1_filedata*,struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hfi1_filedata *fd,
			   struct hfi1_ctxtdata *uctxt)
{
	struct hfi1_devdata *dd = uctxt->dd;
	int ret = 0;

	FUNC3(uctxt->sc);

	/* Now allocate the RcvHdr queue and eager buffers. */
	ret = FUNC2(dd, uctxt);
	if (ret)
		goto done;

	ret = FUNC5(uctxt);
	if (ret)
		goto done;

	/* If sub-contexts are enabled, do the appropriate setup */
	if (uctxt->subctxt_cnt)
		ret = FUNC8(uctxt);
	if (ret)
		goto done;

	ret = FUNC1(uctxt);
	if (ret)
		goto done;

	ret = FUNC6(fd, uctxt);
	if (ret)
		goto done;

	FUNC9(uctxt);

	/* Now that the context is set up, the fd can get a reference. */
	fd->uctxt = uctxt;
	FUNC4(uctxt);

done:
	if (uctxt->subctxt_cnt) {
		/*
		 * On error, set the failed bit so sub-contexts will clean up
		 * correctly.
		 */
		if (ret)
			FUNC7(HFI1_CTXT_BASE_FAILED, &uctxt->event_flags);

		/*
		 * Base context is done (successfully or not), notify anybody
		 * using a sub-context that is waiting for this completion.
		 */
		FUNC0(HFI1_CTXT_BASE_UNINIT, &uctxt->event_flags);
		FUNC10(&uctxt->wait);
	}

	return ret;
}