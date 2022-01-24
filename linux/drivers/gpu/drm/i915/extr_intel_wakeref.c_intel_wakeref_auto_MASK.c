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
struct intel_wakeref_auto {int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  rpm; int /*<<< orphan*/  wakeref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct intel_wakeref_auto *wf, unsigned long timeout)
{
	unsigned long flags;

	if (!timeout) {
		if (FUNC2(&wf->timer))
			FUNC9(&wf->timer);
		return;
	}

	/* Our mission is that we only extend an already active wakeref */
	FUNC1(wf->rpm);

	if (!FUNC5(&wf->count)) {
		FUNC7(&wf->lock, flags);
		if (!FUNC5(&wf->count)) {
			FUNC0(wf->wakeref);
			wf->wakeref = FUNC3(wf->rpm);
			FUNC6(&wf->count, 1);
		}
		FUNC8(&wf->lock, flags);
	}

	/*
	 * If we extend a pending timer, we will only get a single timer
	 * callback and so need to cancel the local inc by running the
	 * elided callback to keep the wf->count balanced.
	 */
	if (FUNC4(&wf->timer, jiffies + timeout))
		FUNC9(&wf->timer);
}