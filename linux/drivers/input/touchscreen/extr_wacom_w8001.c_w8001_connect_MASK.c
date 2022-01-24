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
struct w8001 {char* pen_name; char* touch_name; struct input_dev* pen_dev; struct input_dev* touch_dev; int /*<<< orphan*/  phys; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  mutex; struct serio* serio; } ;
struct serio_driver {int dummy; } ;
struct serio {char* phys; } ;
struct input_dev {char* name; } ;
typedef  int /*<<< orphan*/  basename ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct w8001*) ; 
 struct w8001* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct serio*) ; 
 int FUNC9 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC10 (struct serio*,struct w8001*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int FUNC14 (struct w8001*) ; 
 int /*<<< orphan*/  FUNC15 (struct input_dev*,struct w8001*,struct serio*) ; 
 int FUNC16 (struct w8001*,char*,int) ; 
 int FUNC17 (struct w8001*,char*,int) ; 

__attribute__((used)) static int FUNC18(struct serio *serio, struct serio_driver *drv)
{
	struct w8001 *w8001;
	struct input_dev *input_dev_pen;
	struct input_dev *input_dev_touch;
	char basename[64];
	int err, err_pen, err_touch;

	w8001 = FUNC6(sizeof(struct w8001), GFP_KERNEL);
	input_dev_pen = FUNC1();
	input_dev_touch = FUNC1();
	if (!w8001 || !input_dev_pen || !input_dev_touch) {
		err = -ENOMEM;
		goto fail1;
	}

	w8001->serio = serio;
	w8001->pen_dev = input_dev_pen;
	w8001->touch_dev = input_dev_touch;
	FUNC7(&w8001->mutex);
	FUNC0(&w8001->cmd_done);
	FUNC11(w8001->phys, sizeof(w8001->phys), "%s/input0", serio->phys);

	FUNC10(serio, w8001);
	err = FUNC9(serio, drv);
	if (err)
		goto fail2;

	err = FUNC14(w8001);
	if (err)
		goto fail3;

	/* For backwards-compatibility we compose the basename based on
	 * capabilities and then just append the tool type
	 */
	FUNC13(basename, "Wacom Serial", sizeof(basename));

	err_pen = FUNC16(w8001, basename, sizeof(basename));
	err_touch = FUNC17(w8001, basename, sizeof(basename));
	if (err_pen && err_touch) {
		err = -ENXIO;
		goto fail3;
	}

	if (!err_pen) {
		FUNC13(w8001->pen_name, basename, sizeof(w8001->pen_name));
		FUNC12(w8001->pen_name, " Pen", sizeof(w8001->pen_name));
		input_dev_pen->name = w8001->pen_name;

		FUNC15(input_dev_pen, w8001, serio);

		err = FUNC3(w8001->pen_dev);
		if (err)
			goto fail3;
	} else {
		FUNC2(input_dev_pen);
		input_dev_pen = NULL;
		w8001->pen_dev = NULL;
	}

	if (!err_touch) {
		FUNC13(w8001->touch_name, basename, sizeof(w8001->touch_name));
		FUNC12(w8001->touch_name, " Finger",
			sizeof(w8001->touch_name));
		input_dev_touch->name = w8001->touch_name;

		FUNC15(input_dev_touch, w8001, serio);

		err = FUNC3(w8001->touch_dev);
		if (err)
			goto fail4;
	} else {
		FUNC2(input_dev_touch);
		input_dev_touch = NULL;
		w8001->touch_dev = NULL;
	}

	return 0;

fail4:
	if (w8001->pen_dev)
		FUNC4(w8001->pen_dev);
fail3:
	FUNC8(serio);
fail2:
	FUNC10(serio, NULL);
fail1:
	FUNC2(input_dev_pen);
	FUNC2(input_dev_touch);
	FUNC5(w8001);
	return err;
}