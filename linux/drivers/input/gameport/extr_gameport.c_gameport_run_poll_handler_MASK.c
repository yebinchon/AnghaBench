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
struct gameport {int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  poll_timer; scalar_t__ poll_cnt; int /*<<< orphan*/  (* poll_handler ) (struct gameport*) ;} ;

/* Variables and functions */
 struct gameport* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct gameport* gameport ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  poll_timer ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct gameport *gameport = FUNC0(gameport, t, poll_timer);

	gameport->poll_handler(gameport);
	if (gameport->poll_cnt)
		FUNC1(&gameport->poll_timer, jiffies + FUNC2(gameport->poll_interval));
}