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
struct pblk_lun {int /*<<< orphan*/  wr_sem; } ;
struct pblk {struct pblk_lun* luns; } ;

/* Variables and functions */
 int EINTR ; 
 int ETIME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct pblk *pblk, int pos)
{
	struct pblk_lun *rlun = &pblk->luns[pos];
	int ret;

	/*
	 * Only send one inflight I/O per LUN. Since we map at a page
	 * granurality, all ppas in the I/O will map to the same LUN
	 */

	ret = FUNC0(&rlun->wr_sem, FUNC1(30000));
	if (ret == -ETIME || ret == -EINTR)
		FUNC2(pblk, "taking lun semaphore timed out: err %d\n",
				-ret);
}