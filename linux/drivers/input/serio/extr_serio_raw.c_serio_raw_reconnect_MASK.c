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
struct serio_raw {int dummy; } ;
struct serio_driver {int dummy; } ;
struct serio {int /*<<< orphan*/  dev; struct serio_driver* drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct serio_raw* FUNC1 (struct serio*) ; 

__attribute__((used)) static int FUNC2(struct serio *serio)
{
	struct serio_raw *serio_raw = FUNC1(serio);
	struct serio_driver *drv = serio->drv;

	if (!drv || !serio_raw) {
		FUNC0(&serio->dev,
			"reconnect request, but serio is disconnected, ignoring...\n");
		return -1;
	}

	/*
	 * Nothing needs to be done here, we just need this method to
	 * keep the same device.
	 */
	return 0;
}