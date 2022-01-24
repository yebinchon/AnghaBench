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
struct atkbd {int /*<<< orphan*/  event_work; int /*<<< orphan*/  event_mask; scalar_t__ event_jiffies; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct atkbd *atkbd, int event_bit)
{
	unsigned long delay = FUNC1(50);

	if (FUNC4(jiffies, atkbd->event_jiffies + delay))
		delay = 0;

	atkbd->event_jiffies = jiffies;
	FUNC3(event_bit, &atkbd->event_mask);
	FUNC0();
	FUNC2(&atkbd->event_work, delay);
}