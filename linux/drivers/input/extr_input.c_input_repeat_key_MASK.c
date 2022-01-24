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
struct input_value {int member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct input_dev {int /*<<< orphan*/  event_lock; scalar_t__* rep; int /*<<< orphan*/  timer; int /*<<< orphan*/  repeat_key; int /*<<< orphan*/  keybit; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_value*) ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  KEY_MAX ; 
 size_t REP_PERIOD ; 
 struct input_dev* dev ; 
 struct input_dev* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,struct input_value*,int /*<<< orphan*/ ) ; 
 struct input_value input_value_sync ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct input_dev *dev = FUNC1(dev, t, timer);
	unsigned long flags;

	FUNC6(&dev->event_lock, flags);

	if (FUNC8(dev->repeat_key, dev->key) &&
	    FUNC3(dev->repeat_key, dev->keybit, KEY_MAX)) {
		struct input_value vals[] =  {
			{ EV_KEY, dev->repeat_key, 2 },
			input_value_sync
		};

		FUNC2(dev, vals, FUNC0(vals));

		if (dev->rep[REP_PERIOD])
			FUNC4(&dev->timer, jiffies +
					FUNC5(dev->rep[REP_PERIOD]));
	}

	FUNC7(&dev->event_lock, flags);
}