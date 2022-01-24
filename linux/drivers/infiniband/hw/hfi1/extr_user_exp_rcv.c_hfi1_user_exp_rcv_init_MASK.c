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
typedef  int u16 ;
struct rb_node {int dummy; } ;
struct hfi1_filedata {int tid_limit; int subctxt; int /*<<< orphan*/  tid_lock; int /*<<< orphan*/  handler; int /*<<< orphan*/  mm; int /*<<< orphan*/ * entry_to_rb; void* invalid_tids; scalar_t__ invalid_tid_idx; int /*<<< orphan*/  invalid_lock; } ;
struct hfi1_devdata {TYPE_1__* pport; } ;
struct hfi1_ctxtdata {int expected_count; int subctxt_cnt; int /*<<< orphan*/  flags; struct hfi1_devdata* dd; } ;
struct TYPE_2__ {int /*<<< orphan*/  hfi1_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TID_UNMAP ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int) ; 
 int FUNC2 (struct hfi1_filedata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tid_rb_ops ; 

int FUNC8(struct hfi1_filedata *fd,
			   struct hfi1_ctxtdata *uctxt)
{
	struct hfi1_devdata *dd = uctxt->dd;
	int ret = 0;

	FUNC6(&fd->tid_lock);
	FUNC6(&fd->invalid_lock);

	fd->entry_to_rb = FUNC3(uctxt->expected_count,
				  sizeof(struct rb_node *),
				  GFP_KERNEL);
	if (!fd->entry_to_rb)
		return -ENOMEM;

	if (!FUNC0(uctxt->flags, TID_UNMAP)) {
		fd->invalid_tid_idx = 0;
		fd->invalid_tids = FUNC3(uctxt->expected_count,
					   sizeof(*fd->invalid_tids),
					   GFP_KERNEL);
		if (!fd->invalid_tids) {
			FUNC4(fd->entry_to_rb);
			fd->entry_to_rb = NULL;
			return -ENOMEM;
		}

		/*
		 * Register MMU notifier callbacks. If the registration
		 * fails, continue without TID caching for this context.
		 */
		ret = FUNC2(fd, fd->mm, &tid_rb_ops,
					   dd->pport->hfi1_wq,
					   &fd->handler);
		if (ret) {
			FUNC1(dd,
				    "Failed MMU notifier registration %d\n",
				    ret);
			ret = 0;
		}
	}

	/*
	 * PSM does not have a good way to separate, count, and
	 * effectively enforce a limit on RcvArray entries used by
	 * subctxts (when context sharing is used) when TID caching
	 * is enabled. To help with that, we calculate a per-process
	 * RcvArray entry share and enforce that.
	 * If TID caching is not in use, PSM deals with usage on its
	 * own. In that case, we allow any subctxt to take all of the
	 * entries.
	 *
	 * Make sure that we set the tid counts only after successful
	 * init.
	 */
	FUNC5(&fd->tid_lock);
	if (uctxt->subctxt_cnt && fd->handler) {
		u16 remainder;

		fd->tid_limit = uctxt->expected_count / uctxt->subctxt_cnt;
		remainder = uctxt->expected_count % uctxt->subctxt_cnt;
		if (remainder && fd->subctxt < remainder)
			fd->tid_limit++;
	} else {
		fd->tid_limit = uctxt->expected_count;
	}
	FUNC7(&fd->tid_lock);

	return ret;
}