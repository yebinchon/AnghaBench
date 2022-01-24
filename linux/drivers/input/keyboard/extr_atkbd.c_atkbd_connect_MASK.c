#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct serio_driver {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_3__ {int type; } ;
struct serio {TYPE_2__ dev; scalar_t__ write; TYPE_1__ id; } ;
struct input_dev {int dummy; } ;
struct atkbd {int translated; int write; int softraw; int set; int id; struct input_dev* dev; scalar_t__ softrepeat; int /*<<< orphan*/  scroll; int /*<<< orphan*/  mutex; int /*<<< orphan*/  event_work; int /*<<< orphan*/  ps2dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  SERIO_8042 129 
#define  SERIO_8042_XL 128 
 int /*<<< orphan*/  FUNC1 (struct atkbd*) ; 
 int /*<<< orphan*/  atkbd_attribute_group ; 
 int /*<<< orphan*/  FUNC2 (struct atkbd*) ; 
 int /*<<< orphan*/  atkbd_event_work ; 
 int /*<<< orphan*/  atkbd_extra ; 
 scalar_t__ FUNC3 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct atkbd*) ; 
 int /*<<< orphan*/  atkbd_scroll ; 
 int FUNC5 (struct atkbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atkbd_set ; 
 int /*<<< orphan*/  FUNC6 (struct atkbd*) ; 
 int /*<<< orphan*/  FUNC7 (struct atkbd*) ; 
 int atkbd_softraw ; 
 scalar_t__ atkbd_softrepeat ; 
 struct input_dev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct atkbd*) ; 
 struct atkbd* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct serio*) ; 
 int /*<<< orphan*/  FUNC15 (struct serio*) ; 
 int FUNC16 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC17 (struct serio*,struct atkbd*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct serio *serio, struct serio_driver *drv)
{
	struct atkbd *atkbd;
	struct input_dev *dev;
	int err = -ENOMEM;

	atkbd = FUNC12(sizeof(struct atkbd), GFP_KERNEL);
	dev = FUNC8();
	if (!atkbd || !dev)
		goto fail1;

	atkbd->dev = dev;
	FUNC14(&atkbd->ps2dev, serio);
	FUNC0(&atkbd->event_work, atkbd_event_work);
	FUNC13(&atkbd->mutex);

	switch (serio->id.type) {

	case SERIO_8042_XL:
		atkbd->translated = true;
		/* Fall through */

	case SERIO_8042:
		if (serio->write)
			atkbd->write = true;
		break;
	}

	atkbd->softraw = atkbd_softraw;
	atkbd->softrepeat = atkbd_softrepeat;
	atkbd->scroll = atkbd_scroll;

	if (atkbd->softrepeat)
		atkbd->softraw = true;

	FUNC17(serio, atkbd);

	err = FUNC16(serio, drv);
	if (err)
		goto fail2;

	if (atkbd->write) {

		if (FUNC3(atkbd)) {
			err = -ENODEV;
			goto fail3;
		}

		atkbd->set = FUNC5(atkbd, atkbd_set, atkbd_extra);
		FUNC4(atkbd);

	} else {
		atkbd->set = 2;
		atkbd->id = 0xab00;
	}

	FUNC7(atkbd);
	FUNC6(atkbd);

	err = FUNC18(&serio->dev.kobj, &atkbd_attribute_group);
	if (err)
		goto fail3;

	FUNC2(atkbd);
	if (serio->write)
		FUNC1(atkbd);

	err = FUNC10(atkbd->dev);
	if (err)
		goto fail4;

	return 0;

 fail4: FUNC19(&serio->dev.kobj, &atkbd_attribute_group);
 fail3:	FUNC15(serio);
 fail2:	FUNC17(serio, NULL);
 fail1:	FUNC9(dev);
	FUNC11(atkbd);
	return err;
}