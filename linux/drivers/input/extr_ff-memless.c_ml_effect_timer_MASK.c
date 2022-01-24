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
struct ml_device {struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 struct ml_device* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct ml_device* ml ; 
 int /*<<< orphan*/  FUNC1 (struct ml_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct ml_device *ml = FUNC0(ml, t, timer);
	struct input_dev *dev = ml->dev;
	unsigned long flags;

	FUNC2("timer: updating effects\n");

	FUNC3(&dev->event_lock, flags);
	FUNC1(ml);
	FUNC4(&dev->event_lock, flags);
}