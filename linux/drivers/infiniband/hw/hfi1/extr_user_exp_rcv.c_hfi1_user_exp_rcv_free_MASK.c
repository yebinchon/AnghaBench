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
struct hfi1_filedata {int /*<<< orphan*/ * entry_to_rb; int /*<<< orphan*/ * invalid_tids; scalar_t__ handler; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  tid_used_list; int /*<<< orphan*/  tid_full_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ctxtdata*,int /*<<< orphan*/ *,struct hfi1_filedata*) ; 

void FUNC4(struct hfi1_filedata *fd)
{
	struct hfi1_ctxtdata *uctxt = fd->uctxt;

	/*
	 * The notifier would have been removed when the process'es mm
	 * was freed.
	 */
	if (fd->handler) {
		FUNC1(fd->handler);
	} else {
		if (!FUNC0(uctxt->tid_full_list))
			FUNC3(uctxt, &uctxt->tid_full_list, fd);
		if (!FUNC0(uctxt->tid_used_list))
			FUNC3(uctxt, &uctxt->tid_used_list, fd);
	}

	FUNC2(fd->invalid_tids);
	fd->invalid_tids = NULL;

	FUNC2(fd->entry_to_rb);
	fd->entry_to_rb = NULL;
}