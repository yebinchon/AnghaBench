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
typedef  int /*<<< orphan*/  tidinfo ;
struct hfi1_tid_info {int tidcnt; int /*<<< orphan*/  tidlist; } ;
struct hfi1_filedata {int tid_used; int /*<<< orphan*/  tid_lock; struct hfi1_ctxtdata* uctxt; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/  exp_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int FUNC11 (struct hfi1_filedata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct hfi1_filedata *fd,
			    struct hfi1_tid_info *tinfo)
{
	int ret = 0;
	struct hfi1_ctxtdata *uctxt = fd->uctxt;
	u32 *tidinfo;
	unsigned tididx;

	if (FUNC10(tinfo->tidcnt > fd->tid_used))
		return -EINVAL;

	tidinfo = FUNC4(FUNC9(tinfo->tidlist),
			      sizeof(tidinfo[0]) * tinfo->tidcnt);
	if (FUNC0(tidinfo))
		return FUNC1(tidinfo);

	FUNC5(&uctxt->exp_mutex);
	for (tididx = 0; tididx < tinfo->tidcnt; tididx++) {
		ret = FUNC11(fd, tidinfo[tididx], NULL);
		if (ret) {
			FUNC2(TID, "Failed to unprogram rcv array %d",
				  ret);
			break;
		}
	}
	FUNC7(&fd->tid_lock);
	fd->tid_used -= tididx;
	FUNC8(&fd->tid_lock);
	tinfo->tidcnt = tididx;
	FUNC6(&uctxt->exp_mutex);

	FUNC3(tidinfo);
	return ret;
}