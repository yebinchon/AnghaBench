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
struct dm_integrity_c {int /*<<< orphan*/  commit_work; int /*<<< orphan*/  commit_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  autocommit_timer ; 
 int /*<<< orphan*/  FUNC0 (struct dm_integrity_c*) ; 
 struct dm_integrity_c* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct dm_integrity_c* ic ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct dm_integrity_c *ic = FUNC1(ic, t, autocommit_timer);

	if (FUNC2(!FUNC0(ic)))
		FUNC3(ic->commit_wq, &ic->commit_work);
}