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
struct mirror_set {int /*<<< orphan*/  timer_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mirror_set* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct mirror_set* ms ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC2 (struct mirror_set*) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct mirror_set *ms = FUNC1(ms, t, timer);

	FUNC0(0, &ms->timer_pending);
	FUNC2(ms);
}