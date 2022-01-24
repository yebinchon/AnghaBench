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
struct hfi1_ctxtdata {int aspm_enabled; int /*<<< orphan*/  aspm_lock; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aspm_timer ; 
 struct hfi1_ctxtdata* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hfi1_ctxtdata* rcd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static  void FUNC4(struct timer_list *t)
{
	struct hfi1_ctxtdata *rcd = FUNC1(rcd, t, aspm_timer);
	unsigned long flags;

	FUNC2(&rcd->aspm_lock, flags);
	FUNC0(rcd->dd);
	rcd->aspm_enabled = true;
	FUNC3(&rcd->aspm_lock, flags);
}