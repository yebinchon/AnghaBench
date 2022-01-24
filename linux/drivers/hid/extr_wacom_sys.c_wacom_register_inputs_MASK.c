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
struct wacom_wac {struct input_dev* pen_input; struct input_dev* touch_input; struct input_dev* pad_input; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*) ; 
 int FUNC1 (struct input_dev*) ; 
 int FUNC2 (struct input_dev*,struct wacom_wac*) ; 
 int FUNC3 (struct input_dev*,struct wacom_wac*) ; 
 int FUNC4 (struct input_dev*,struct wacom_wac*) ; 

__attribute__((used)) static int FUNC5(struct wacom *wacom)
{
	struct input_dev *pen_input_dev, *touch_input_dev, *pad_input_dev;
	struct wacom_wac *wacom_wac = &(wacom->wacom_wac);
	int error = 0;

	pen_input_dev = wacom_wac->pen_input;
	touch_input_dev = wacom_wac->touch_input;
	pad_input_dev = wacom_wac->pad_input;

	if (!pen_input_dev || !touch_input_dev || !pad_input_dev)
		return -EINVAL;

	error = FUNC3(pen_input_dev, wacom_wac);
	if (error) {
		/* no pen in use on this interface */
		FUNC0(pen_input_dev);
		wacom_wac->pen_input = NULL;
		pen_input_dev = NULL;
	} else {
		error = FUNC1(pen_input_dev);
		if (error)
			goto fail;
	}

	error = FUNC4(touch_input_dev, wacom_wac);
	if (error) {
		/* no touch in use on this interface */
		FUNC0(touch_input_dev);
		wacom_wac->touch_input = NULL;
		touch_input_dev = NULL;
	} else {
		error = FUNC1(touch_input_dev);
		if (error)
			goto fail;
	}

	error = FUNC2(pad_input_dev, wacom_wac);
	if (error) {
		/* no pad in use on this interface */
		FUNC0(pad_input_dev);
		wacom_wac->pad_input = NULL;
		pad_input_dev = NULL;
	} else {
		error = FUNC1(pad_input_dev);
		if (error)
			goto fail;
	}

	return 0;

fail:
	wacom_wac->pad_input = NULL;
	wacom_wac->touch_input = NULL;
	wacom_wac->pen_input = NULL;
	return error;
}