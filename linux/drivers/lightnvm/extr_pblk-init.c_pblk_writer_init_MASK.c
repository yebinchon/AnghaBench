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
struct pblk {int /*<<< orphan*/  wtimer; int /*<<< orphan*/  writer_ts; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pblk*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pblk*,char*,int) ; 
 int /*<<< orphan*/  pblk_write_timer_fn ; 
 int /*<<< orphan*/  pblk_write_ts ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pblk *pblk)
{
	pblk->writer_ts = FUNC2(pblk_write_ts, pblk, "pblk-writer-t");
	if (FUNC0(pblk->writer_ts)) {
		int err = FUNC1(pblk->writer_ts);

		if (err != -EINTR)
			FUNC5(pblk, "could not allocate writer kthread (%d)\n",
					err);
		return err;
	}

	FUNC6(&pblk->wtimer, pblk_write_timer_fn, 0);
	FUNC3(&pblk->wtimer, jiffies + FUNC4(100));

	return 0;
}