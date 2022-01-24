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
struct input_dev_poller {int /*<<< orphan*/  work; int /*<<< orphan*/  poll_interval; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  system_freezable_wq ; 

__attribute__((used)) static void FUNC3(struct input_dev_poller *poller)
{
	unsigned long delay;

	delay = FUNC0(poller->poll_interval);
	if (delay >= HZ)
		delay = FUNC2(delay);

	FUNC1(system_freezable_wq, &poller->work, delay);
}