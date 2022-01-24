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
struct usb_interface {int dummy; } ;
struct pegasus {int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  irq; scalar_t__ is_open; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  NOTETAKER_LED_MOUSE ; 
 int /*<<< orphan*/  PEN_MODE_XY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pegasus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pegasus* FUNC3 (struct usb_interface*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf)
{
	struct pegasus *pegasus = FUNC3(intf);
	int retval = 0;

	FUNC0(&pegasus->pm_mutex);
	if (pegasus->is_open) {
		retval = FUNC2(pegasus, PEN_MODE_XY,
					  NOTETAKER_LED_MOUSE);
		if (!retval && FUNC4(pegasus->irq, GFP_NOIO) < 0)
			retval = -EIO;
	}
	FUNC1(&pegasus->pm_mutex);

	return retval;
}