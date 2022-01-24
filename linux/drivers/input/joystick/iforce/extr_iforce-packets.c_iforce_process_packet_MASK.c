#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct input_dev {int /*<<< orphan*/  absbit; } ;
struct iforce {TYPE_1__* core_effects; struct input_dev* dev; } ;
typedef  int /*<<< orphan*/  __s8 ;
typedef  int /*<<< orphan*/  __s16 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_BRAKE ; 
 int /*<<< orphan*/  ABS_GAS ; 
 int /*<<< orphan*/  ABS_RUDDER ; 
 int /*<<< orphan*/  ABS_THROTTLE ; 
 int /*<<< orphan*/  ABS_WHEEL ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_DEAD ; 
 int /*<<< orphan*/  FF_CORE_IS_PLAYED ; 
 int /*<<< orphan*/  FF_STATUS_PLAYING ; 
 int /*<<< orphan*/  FF_STATUS_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct iforce*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct iforce*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct iforce *iforce,
			   u8 packet_id, u8 *data, size_t len)
{
	struct input_dev *dev = iforce->dev;
	int i, j;

	switch (packet_id) {

	case 0x01:	/* joystick position data */
		FUNC2(dev, ABS_X,
				 (__s16) FUNC0(data));
		FUNC2(dev, ABS_Y,
				 (__s16) FUNC0(data + 2));
		FUNC2(dev, ABS_THROTTLE, 255 - data[4]);

		if (len >= 8 && FUNC9(ABS_RUDDER ,dev->absbit))
			FUNC2(dev, ABS_RUDDER, (__s8)data[7]);

		FUNC1(iforce, data);

		FUNC5(dev);
		break;

	case 0x03:	/* wheel position data */
		FUNC2(dev, ABS_WHEEL,
				 (__s16) FUNC0(data));
		FUNC2(dev, ABS_GAS,   255 - data[2]);
		FUNC2(dev, ABS_BRAKE, 255 - data[3]);

		FUNC1(iforce, data);

		FUNC5(dev);
		break;

	case 0x02:	/* status report */
		FUNC4(dev, BTN_DEAD, data[0] & 0x02);
		FUNC5(dev);

		/* Check if an effect was just started or stopped */
		i = data[1] & 0x7f;
		if (data[1] & 0x80) {
			if (!FUNC8(FF_CORE_IS_PLAYED, iforce->core_effects[i].flags)) {
				/* Report play event */
				FUNC3(dev, i, FF_STATUS_PLAYING);
			}
		} else if (FUNC7(FF_CORE_IS_PLAYED, iforce->core_effects[i].flags)) {
			/* Report stop event */
			FUNC3(dev, i, FF_STATUS_STOPPED);
		}

		for (j = 3; j < len; j += 2)
			FUNC6(iforce, FUNC0(data + j));

		break;
	}
}