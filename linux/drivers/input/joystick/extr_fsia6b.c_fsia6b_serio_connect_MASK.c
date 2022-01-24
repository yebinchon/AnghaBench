#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct serio_driver {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; TYPE_2__ id; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {int version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {TYPE_4__ dev; TYPE_3__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  state; scalar_t__ offset; scalar_t__ ibuf; } ;
struct fsia6b {struct input_dev* dev; int /*<<< orphan*/  phys; TYPE_1__ packet; } ;

/* Variables and functions */
 scalar_t__ BTN_0 ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int /*<<< orphan*/  DRIVER_DESC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IBUS_SERVO_COUNT ; 
 int /*<<< orphan*/  SERIO_FSIA6B ; 
 int /*<<< orphan*/  SYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/ * fsia6b_axes ; 
 struct input_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct fsia6b*) ; 
 struct fsia6b* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct serio*) ; 
 int FUNC9 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC10 (struct serio*,struct fsia6b*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 
 char* switch_config ; 

__attribute__((used)) static int FUNC12(struct serio *serio, struct serio_driver *drv)
{
	struct fsia6b *fsia6b;
	struct input_dev *input_dev;
	int err;
	int i, j;
	int sw_id = 0;

	fsia6b = FUNC7(sizeof(*fsia6b), GFP_KERNEL);
	if (!fsia6b)
		return -ENOMEM;

	fsia6b->packet.ibuf = 0;
	fsia6b->packet.offset = 0;
	fsia6b->packet.state = SYNC;

	FUNC10(serio, fsia6b);

	input_dev = FUNC1();
	if (!input_dev) {
		err = -ENOMEM;
		goto fail1;
	}
	fsia6b->dev = input_dev;

	FUNC11(fsia6b->phys, sizeof(fsia6b->phys), "%s/input0", serio->phys);

	input_dev->name = DRIVER_DESC;
	input_dev->phys = fsia6b->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_FSIA6B;
	input_dev->id.product = serio->id.id;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;

	for (i = 0; i < IBUS_SERVO_COUNT; i++)
		FUNC4(input_dev, fsia6b_axes[i],
				     1000, 2000, 2, 2);

	/* Register switch configuration */
	for (i = 0; i < IBUS_SERVO_COUNT; i++) {
		if (switch_config[i] < '0' || switch_config[i] > '3') {
			FUNC0(&fsia6b->dev->dev,
				"Invalid switch configuration supplied for fsia6b.\n");
			err = -EINVAL;
			goto fail2;
		}

		for (j = '1'; j <= switch_config[i]; j++) {
			FUNC5(input_dev, EV_KEY, BTN_0 + sw_id);
			sw_id++;
		}
	}

	err = FUNC9(serio, drv);
	if (err)
		goto fail2;

	err = FUNC3(fsia6b->dev);
	if (err)
		goto fail3;

	return 0;

fail3:	FUNC8(serio);
fail2:	FUNC2(input_dev);
fail1:	FUNC10(serio, NULL);
	FUNC6(fsia6b);
	return err;
}