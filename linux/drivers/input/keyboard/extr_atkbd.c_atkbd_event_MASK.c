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
struct input_dev {int dummy; } ;
struct atkbd {int /*<<< orphan*/  softrepeat; int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATKBD_LED_EVENT_BIT ; 
 int /*<<< orphan*/  ATKBD_REP_EVENT_BIT ; 
#define  EV_LED 129 
#define  EV_REP 128 
 int /*<<< orphan*/  FUNC0 (struct atkbd*,int /*<<< orphan*/ ) ; 
 struct atkbd* FUNC1 (struct input_dev*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev,
			unsigned int type, unsigned int code, int value)
{
	struct atkbd *atkbd = FUNC1(dev);

	if (!atkbd->write)
		return -1;

	switch (type) {

	case EV_LED:
		FUNC0(atkbd, ATKBD_LED_EVENT_BIT);
		return 0;

	case EV_REP:
		if (!atkbd->softrepeat)
			FUNC0(atkbd, ATKBD_REP_EVENT_BIT);
		return 0;

	default:
		return -1;
	}
}