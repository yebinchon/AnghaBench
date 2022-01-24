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
struct omap_mbox_queue {int /*<<< orphan*/  work; int /*<<< orphan*/  fifo; int /*<<< orphan*/  lock; } ;
struct omap_mbox {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mbox_queue*) ; 
 struct omap_mbox_queue* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbox_kfifo_size ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct omap_mbox_queue *FUNC5(struct omap_mbox *mbox,
					void (*work)(struct work_struct *))
{
	struct omap_mbox_queue *mq;

	if (!work)
		return NULL;

	mq = FUNC3(sizeof(*mq), GFP_KERNEL);
	if (!mq)
		return NULL;

	FUNC4(&mq->lock);

	if (FUNC1(&mq->fifo, mbox_kfifo_size, GFP_KERNEL))
		goto error;

	FUNC0(&mq->work, work);
	return mq;

error:
	FUNC2(mq);
	return NULL;
}