#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int run; int /*<<< orphan*/  lock; int /*<<< orphan*/ * fb; int /*<<< orphan*/  work; int /*<<< orphan*/  waitq; } ;
struct gm12u320_device {TYPE_1__ fb_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gm12u320_device *gm12u320)
{
	FUNC2(&gm12u320->fb_update.lock);
	gm12u320->fb_update.run = false;
	FUNC3(&gm12u320->fb_update.lock);

	FUNC4(&gm12u320->fb_update.waitq);
	FUNC0(&gm12u320->fb_update.work);

	FUNC2(&gm12u320->fb_update.lock);
	if (gm12u320->fb_update.fb) {
		FUNC1(gm12u320->fb_update.fb);
		gm12u320->fb_update.fb = NULL;
	}
	FUNC3(&gm12u320->fb_update.lock);
}