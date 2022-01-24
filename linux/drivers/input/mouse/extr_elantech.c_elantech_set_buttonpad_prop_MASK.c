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
struct psmouse {struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  keybit; int /*<<< orphan*/  propbit; } ;
struct elantech_data {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  INPUT_PROP_BUTTONPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	struct elantech_data *etd = psmouse->private;

	if (FUNC2(&etd->info)) {
		FUNC1(INPUT_PROP_BUTTONPAD, dev->propbit);
		FUNC0(BTN_RIGHT, dev->keybit);
	}
}