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
struct iwch_dev {int dummy; } ;
struct iwch_cq {int /*<<< orphan*/  lock; struct iwch_dev* rhp; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct iwch_dev*,struct iwch_cq*,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct iwch_cq* FUNC3 (struct ib_cq*) ; 

int FUNC4(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	struct iwch_dev *rhp;
	struct iwch_cq *chp;
	unsigned long flags;
	int npolled;
	int err = 0;

	chp = FUNC3(ibcq);
	rhp = chp->rhp;

	FUNC1(&chp->lock, flags);
	for (npolled = 0; npolled < num_entries; ++npolled) {

		/*
		 * Because T3 can post CQEs that are _not_ associated
		 * with a WR, we might have to poll again after removing
		 * one of these.
		 */
		do {
			err = FUNC0(rhp, chp, wc + npolled);
		} while (err == -EAGAIN);
		if (err <= 0)
			break;
	}
	FUNC2(&chp->lock, flags);

	if (err < 0)
		return err;
	else {
		return npolled;
	}
}