#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct maple_driver {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * function_data; } ;
struct maple_device {struct maple_driver* driver; int /*<<< orphan*/  product_name; int /*<<< orphan*/  dev; TYPE_1__ devinfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; struct dc_pad* platform_data; } ;
struct input_dev {TYPE_3__ id; int /*<<< orphan*/  name; TYPE_2__ dev; int /*<<< orphan*/ * evbit; scalar_t__* absbit; scalar_t__* keybit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct dc_pad {struct maple_device* mdev; struct input_dev* dev; } ;

/* Variables and functions */
#define  ABS_BRAKE 145 
#define  ABS_GAS 144 
#define  ABS_HAT0X 143 
#define  ABS_HAT0Y 142 
#define  ABS_HAT1X 141 
#define  ABS_HAT1Y 140 
 int ABS_HAT3Y ; 
#define  ABS_RX 139 
#define  ABS_RY 138 
#define  ABS_X 137 
#define  ABS_Y 136 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
#define  BTN_A 135 
#define  BTN_B 134 
#define  BTN_C 133 
 int /*<<< orphan*/  BTN_JOYSTICK ; 
#define  BTN_SELECT 132 
#define  BTN_START 131 
#define  BTN_X 130 
#define  BTN_Y 129 
#define  BTN_Z 128 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (short const,scalar_t__*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_pad_close ; 
 int /*<<< orphan*/  dc_pad_open ; 
 struct input_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dc_pad*) ; 
 struct dc_pad* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct maple_device*,struct dc_pad*) ; 
 struct maple_device* FUNC11 (struct device*) ; 
 struct maple_driver* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	static const short btn_bit[32] = {
		BTN_C, BTN_B, BTN_A, BTN_START, -1, -1, -1, -1,
		BTN_Z, BTN_Y, BTN_X, BTN_SELECT, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1,
	};

	static const short abs_bit[32] = {
		-1, -1, -1, -1, ABS_HAT0Y, ABS_HAT0Y, ABS_HAT0X, ABS_HAT0X,
		-1, -1, -1, -1, ABS_HAT1Y, ABS_HAT1Y, ABS_HAT1X, ABS_HAT1X,
		ABS_GAS, ABS_BRAKE, ABS_X, ABS_Y, ABS_RX, ABS_RY, -1, -1,
		-1, -1, -1, -1, -1, -1, -1, -1,
	};

	struct maple_device *mdev = FUNC11(dev);
	struct maple_driver *mdrv = FUNC12(dev->driver);
	int i, error;
	struct dc_pad *pad;
	struct input_dev *idev;
	unsigned long data = FUNC3(mdev->devinfo.function_data[0]);

	pad = FUNC9(sizeof(struct dc_pad), GFP_KERNEL);
	idev = FUNC4();
	if (!pad || !idev) {
		error = -ENOMEM;
		goto fail;
	}

	pad->dev = idev;
	pad->mdev = mdev;

	idev->open = dc_pad_open;
	idev->close = dc_pad_close;

	for (i = 0; i < 32; i++) {
		if (data & (1 << i)) {
			if (btn_bit[i] >= 0)
				FUNC2(btn_bit[i], idev->keybit);
			else if (abs_bit[i] >= 0)
				FUNC2(abs_bit[i], idev->absbit);
		}
	}

	if (idev->keybit[FUNC1(BTN_JOYSTICK)])
		idev->evbit[0] |= FUNC0(EV_KEY);

	if (idev->absbit[0])
		idev->evbit[0] |= FUNC0(EV_ABS);

	for (i = ABS_X; i <= ABS_BRAKE; i++)
		FUNC7(idev, i, 0, 255, 0, 0);

	for (i = ABS_HAT0X; i <= ABS_HAT3Y; i++)
		FUNC7(idev, i, 1, -1, 0, 0);

	idev->dev.platform_data = pad;
	idev->dev.parent = &mdev->dev;
	idev->name = mdev->product_name;
	idev->id.bustype = BUS_HOST;

	error = FUNC6(idev);
	if (error)
		goto fail;

	mdev->driver = mdrv;
	FUNC10(mdev, pad);

	return 0;

fail:
	FUNC5(idev);
	FUNC8(pad);
	FUNC10(mdev, NULL);
	return error;
}