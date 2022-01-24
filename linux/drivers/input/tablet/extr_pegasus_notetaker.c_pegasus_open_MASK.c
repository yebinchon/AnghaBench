#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pegasus {int is_open; int /*<<< orphan*/  intf; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  init; TYPE_1__* irq; int /*<<< orphan*/  usbdev; } ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NOTETAKER_LED_MOUSE ; 
 int /*<<< orphan*/  PEN_MODE_XY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pegasus* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pegasus*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct input_dev *dev)
{
	struct pegasus *pegasus = FUNC1(dev);
	int error;

	error = FUNC5(pegasus->intf);
	if (error)
		return error;

	FUNC2(&pegasus->pm_mutex);
	pegasus->irq->dev = pegasus->usbdev;
	if (FUNC8(pegasus->irq, GFP_KERNEL)) {
		error = -EIO;
		goto err_autopm_put;
	}

	error = FUNC4(pegasus, PEN_MODE_XY, NOTETAKER_LED_MOUSE);
	if (error)
		goto err_kill_urb;

	pegasus->is_open = true;
	FUNC3(&pegasus->pm_mutex);
	return 0;

err_kill_urb:
	FUNC7(pegasus->irq);
	FUNC0(&pegasus->init);
err_autopm_put:
	FUNC3(&pegasus->pm_mutex);
	FUNC6(pegasus->intf);
	return error;
}