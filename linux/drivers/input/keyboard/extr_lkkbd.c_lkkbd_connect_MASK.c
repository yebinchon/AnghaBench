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
struct serio {char* phys; int /*<<< orphan*/  dev; } ;
struct lkkbd {struct serio* serio; struct input_dev* dev; int /*<<< orphan*/ * keycode; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; int /*<<< orphan*/  ctrlclick_volume; int /*<<< orphan*/  keyclick_volume; int /*<<< orphan*/  bell_volume; int /*<<< orphan*/  tq; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int version; scalar_t__ product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int keycodesize; int /*<<< orphan*/  keybit; int /*<<< orphan*/  keycodemax; int /*<<< orphan*/ * keycode; int /*<<< orphan*/  sndbit; int /*<<< orphan*/  ledbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  event; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  EV_SND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_COMPOSE ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 int /*<<< orphan*/  LED_SLEEP ; 
 int /*<<< orphan*/  LK_CMD_POWERCYCLE_RESET ; 
 int LK_NUM_KEYCODES ; 
 int /*<<< orphan*/  SERIO_LKKBD ; 
 int /*<<< orphan*/  SND_BELL ; 
 int /*<<< orphan*/  SND_CLICK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bell_volume ; 
 int /*<<< orphan*/  ctrlclick_volume ; 
 struct input_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,struct lkkbd*) ; 
 int /*<<< orphan*/  keyclick_volume ; 
 int /*<<< orphan*/  FUNC8 (struct lkkbd*) ; 
 struct lkkbd* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lkkbd_event ; 
 int /*<<< orphan*/  lkkbd_keycode ; 
 int /*<<< orphan*/  lkkbd_reinit ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct serio*) ; 
 int FUNC12 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC13 (struct serio*,struct lkkbd*) ; 
 int /*<<< orphan*/  FUNC14 (struct serio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC17(struct serio *serio, struct serio_driver *drv)
{
	struct lkkbd *lk;
	struct input_dev *input_dev;
	int i;
	int err;

	lk = FUNC9(sizeof(struct lkkbd), GFP_KERNEL);
	input_dev = FUNC4();
	if (!lk || !input_dev) {
		err = -ENOMEM;
		goto fail1;
	}

	lk->serio = serio;
	lk->dev = input_dev;
	FUNC1(&lk->tq, lkkbd_reinit);
	lk->bell_volume = bell_volume;
	lk->keyclick_volume = keyclick_volume;
	lk->ctrlclick_volume = ctrlclick_volume;
	FUNC10(lk->keycode, lkkbd_keycode, sizeof(lk->keycode));

	FUNC16(lk->name, "DEC LK keyboard", sizeof(lk->name));
	FUNC15(lk->phys, sizeof(lk->phys), "%s/input0", serio->phys);

	input_dev->name = lk->name;
	input_dev->phys = lk->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_LKKBD;
	input_dev->id.product = 0;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;
	input_dev->event = lkkbd_event;

	FUNC7(input_dev, lk);

	FUNC3(EV_KEY, input_dev->evbit);
	FUNC3(EV_LED, input_dev->evbit);
	FUNC3(EV_SND, input_dev->evbit);
	FUNC3(EV_REP, input_dev->evbit);
	FUNC3(LED_CAPSL, input_dev->ledbit);
	FUNC3(LED_SLEEP, input_dev->ledbit);
	FUNC3(LED_COMPOSE, input_dev->ledbit);
	FUNC3(LED_SCROLLL, input_dev->ledbit);
	FUNC3(SND_BELL, input_dev->sndbit);
	FUNC3(SND_CLICK, input_dev->sndbit);

	input_dev->keycode = lk->keycode;
	input_dev->keycodesize = sizeof(lk->keycode[0]);
	input_dev->keycodemax = FUNC0(lk->keycode);

	for (i = 0; i < LK_NUM_KEYCODES; i++)
		FUNC3(lk->keycode[i], input_dev->keybit);
	FUNC2(KEY_RESERVED, input_dev->keybit);

	FUNC13(serio, lk);

	err = FUNC12(serio, drv);
	if (err)
		goto fail2;

	err = FUNC6(lk->dev);
	if (err)
		goto fail3;

	FUNC14(lk->serio, LK_CMD_POWERCYCLE_RESET);

	return 0;

 fail3:	FUNC11(serio);
 fail2:	FUNC13(serio, NULL);
 fail1:	FUNC5(input_dev);
	FUNC8(lk);
	return err;
}