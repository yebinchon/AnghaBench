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
struct serio_driver {int dummy; } ;
struct serio {int /*<<< orphan*/  dev; struct serio_driver* drv; } ;
struct atkbd {scalar_t__ set; int /*<<< orphan*/  mutex; scalar_t__ write; scalar_t__ emul; scalar_t__ xl_bit; int /*<<< orphan*/  softrepeat; int /*<<< orphan*/  extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC1 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC2 (struct atkbd*) ; 
 scalar_t__ FUNC3 (struct atkbd*) ; 
 scalar_t__ FUNC4 (struct atkbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC6 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct atkbd* FUNC10 (struct serio*) ; 

__attribute__((used)) static int FUNC11(struct serio *serio)
{
	struct atkbd *atkbd = FUNC10(serio);
	struct serio_driver *drv = serio->drv;
	int retval = -1;

	if (!atkbd || !drv) {
		FUNC7(&serio->dev,
			"reconnect request, but serio is disconnected, ignoring...\n");
		return -1;
	}

	FUNC8(&atkbd->mutex);

	FUNC1(atkbd);

	if (atkbd->write) {
		if (FUNC3(atkbd))
			goto out;

		if (atkbd->set != FUNC4(atkbd, atkbd->set, atkbd->extra))
			goto out;

		/*
		 * Restore LED state and repeat rate. While input core
		 * will do this for us at resume time reconnect may happen
		 * because user requested it via sysfs or simply because
		 * keyboard was unplugged and plugged in again so we need
		 * to do it ourselves here.
		 */
		FUNC5(atkbd);
		if (!atkbd->softrepeat)
			FUNC6(atkbd);

	}

	/*
	 * Reset our state machine in case reconnect happened in the middle
	 * of multi-byte scancode.
	 */
	atkbd->xl_bit = 0;
	atkbd->emul = 0;

	FUNC2(atkbd);
	if (atkbd->write)
		FUNC0(atkbd);

	retval = 0;

 out:
	FUNC9(&atkbd->mutex);
	return retval;
}