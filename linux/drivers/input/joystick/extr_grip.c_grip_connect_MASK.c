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
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {size_t product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct grip {size_t* mode; struct input_dev** dev; int /*<<< orphan*/ * phys; struct gameport* gameport; } ;
struct gameport_driver {int dummy; } ;
struct gameport {char* phys; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_GAMEPORT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GAMEPORT_ID_VENDOR_GRAVIS ; 
 int /*<<< orphan*/  GAMEPORT_MODE_RAW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GRIP_LENGTH_XT ; 
 size_t GRIP_MODE_BD ; 
 size_t GRIP_MODE_DC ; 
 size_t GRIP_MODE_GPP ; 
 size_t GRIP_MODE_XT ; 
 int /*<<< orphan*/  FUNC1 (struct gameport*) ; 
 int FUNC2 (struct gameport*,struct gameport_driver*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gameport*,struct grip*) ; 
 int /*<<< orphan*/  FUNC4 (struct gameport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gameport*,int) ; 
 int** grip_abs ; 
 int* grip_anx ; 
 int** grip_btn ; 
 int* grip_cen ; 
 int /*<<< orphan*/  grip_close ; 
 int /*<<< orphan*/  FUNC6 (struct gameport*,int,unsigned int*) ; 
 int /*<<< orphan*/ * grip_name ; 
 int /*<<< orphan*/  grip_open ; 
 int /*<<< orphan*/  grip_poll ; 
 int /*<<< orphan*/  FUNC7 (struct gameport*,int,unsigned int*) ; 
 struct input_dev* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,struct grip*) ; 
 int /*<<< orphan*/  FUNC13 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct grip*) ; 
 struct grip* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*,char*,int) ; 

__attribute__((used)) static int FUNC18(struct gameport *gameport, struct gameport_driver *drv)
{
	struct grip *grip;
	struct input_dev *input_dev;
	unsigned int data[GRIP_LENGTH_XT];
	int i, j, t;
	int err;

	if (!(grip = FUNC15(sizeof(struct grip), GFP_KERNEL)))
		return -ENOMEM;

	grip->gameport = gameport;

	FUNC3(gameport, grip);

	err = FUNC2(gameport, drv, GAMEPORT_MODE_RAW);
	if (err)
		goto fail1;

	for (i = 0; i < 2; i++) {
		if (!FUNC6(gameport, (i << 1) + 4, data)) {
			grip->mode[i] = GRIP_MODE_GPP;
			continue;
		}
		if (!FUNC7(gameport, (i << 1) + 4, data)) {
			if (!(data[3] & 7)) {
				grip->mode[i] = GRIP_MODE_BD;
				continue;
			}
			if (!(data[2] & 0xf0)) {
				grip->mode[i] = GRIP_MODE_XT;
				continue;
			}
			grip->mode[i] = GRIP_MODE_DC;
			continue;
		}
	}

	if (!grip->mode[0] && !grip->mode[1]) {
		err = -ENODEV;
		goto fail2;
	}

	FUNC4(gameport, grip_poll);
	FUNC5(gameport, 20);

	for (i = 0; i < 2; i++) {
		if (!grip->mode[i])
			continue;

		grip->dev[i] = input_dev = FUNC8();
		if (!input_dev) {
			err = -ENOMEM;
			goto fail3;
		}

		FUNC17(grip->phys[i], sizeof(grip->phys[i]),
			 "%s/input%d", gameport->phys, i);

		input_dev->name = grip_name[grip->mode[i]];
		input_dev->phys = grip->phys[i];
		input_dev->id.bustype = BUS_GAMEPORT;
		input_dev->id.vendor = GAMEPORT_ID_VENDOR_GRAVIS;
		input_dev->id.product = grip->mode[i];
		input_dev->id.version = 0x0100;
		input_dev->dev.parent = &gameport->dev;

		FUNC12(input_dev, grip);

		input_dev->open = grip_open;
		input_dev->close = grip_close;

		input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);

		for (j = 0; (t = grip_abs[grip->mode[i]][j]) >= 0; j++) {

			if (j < grip_cen[grip->mode[i]])
				FUNC11(input_dev, t, 14, 52, 1, 2);
			else if (j < grip_anx[grip->mode[i]])
				FUNC11(input_dev, t, 3, 57, 1, 0);
			else
				FUNC11(input_dev, t, -1, 1, 0, 0);
		}

		for (j = 0; (t = grip_btn[grip->mode[i]][j]) >= 0; j++)
			if (t > 0)
				FUNC16(t, input_dev->keybit);

		err = FUNC10(grip->dev[i]);
		if (err)
			goto fail4;
	}

	return 0;

 fail4:	FUNC9(grip->dev[i]);
 fail3:	while (--i >= 0)
		if (grip->dev[i])
			FUNC13(grip->dev[i]);
 fail2:	FUNC1(gameport);
 fail1:	FUNC3(gameport, NULL);
	FUNC14(grip);
	return err;
}