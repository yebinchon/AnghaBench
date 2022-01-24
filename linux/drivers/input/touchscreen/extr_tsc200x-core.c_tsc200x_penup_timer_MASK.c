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
struct tsc200x {int /*<<< orphan*/  lock; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct tsc200x* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  penup_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tsc200x* ts ; 
 int /*<<< orphan*/  FUNC3 (struct tsc200x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct tsc200x *ts = FUNC0(ts, t, penup_timer);
	unsigned long flags;

	FUNC1(&ts->lock, flags);
	FUNC3(ts, 0, 0, 0);
	FUNC2(&ts->lock, flags);
}