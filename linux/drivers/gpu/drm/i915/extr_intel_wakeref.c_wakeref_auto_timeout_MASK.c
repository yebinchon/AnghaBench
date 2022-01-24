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
struct timer_list {int dummy; } ;
struct intel_wakeref_auto {int /*<<< orphan*/  rpm; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeref; int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct intel_wakeref_auto* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 
 struct intel_wakeref_auto* wf ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct intel_wakeref_auto *wf = FUNC1(wf, t, timer);
	intel_wakeref_t wakeref;
	unsigned long flags;

	if (!FUNC3(&wf->count, &wf->lock, &flags))
		return;

	wakeref = FUNC0(&wf->wakeref);
	FUNC4(&wf->lock, flags);

	FUNC2(wf->rpm, wakeref);
}