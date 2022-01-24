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
struct tsc200x {int /*<<< orphan*/  irq; int /*<<< orphan*/  esd_work; int /*<<< orphan*/  penup_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tsc200x*) ; 

__attribute__((used)) static void FUNC5(struct tsc200x *ts)
{
	FUNC4(ts);

	FUNC2(ts->irq);
	FUNC1(&ts->penup_timer);

	FUNC0(&ts->esd_work);

	FUNC3(ts->irq);
}