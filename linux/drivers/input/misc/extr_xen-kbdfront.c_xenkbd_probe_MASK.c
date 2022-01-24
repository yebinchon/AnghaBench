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
struct xenkbd_info {int irq; int gref; int mtouch_cur_contact_id; struct input_dev* mtouch; struct xenbus_device* xbdev; int /*<<< orphan*/  phys; struct input_dev* ptr; struct input_dev* kbd; void* page; } ;
struct xenbus_device_id {int dummy; } ;
struct xenbus_device {char* nodename; int /*<<< orphan*/  otherend; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int vendor; int product; void* bustype; } ;
struct input_dev {char* name; TYPE_1__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int BTN_LEFT ; 
 int BTN_TASK ; 
 void* BUS_PCI ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EV_ABS ; 
 int EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  INPUT_MT_DIRECT ; 
 int KEY_ESC ; 
 int KEY_MAX ; 
 int KEY_OK ; 
 int KEY_UNKNOWN ; 
 size_t KPARAM_X ; 
 size_t KPARAM_Y ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int XENFB_HEIGHT ; 
 int XENFB_WIDTH ; 
 int /*<<< orphan*/  XENKBD_FIELD_FEAT_ABS_POINTER ; 
 int /*<<< orphan*/  XENKBD_FIELD_FEAT_DSBL_KEYBRD ; 
 int /*<<< orphan*/  XENKBD_FIELD_FEAT_DSBL_POINTER ; 
 int /*<<< orphan*/  XENKBD_FIELD_FEAT_MTOUCH ; 
 int /*<<< orphan*/  XENKBD_FIELD_HEIGHT ; 
 int /*<<< orphan*/  XENKBD_FIELD_MT_HEIGHT ; 
 int /*<<< orphan*/  XENKBD_FIELD_MT_NUM_CONTACTS ; 
 int /*<<< orphan*/  XENKBD_FIELD_MT_WIDTH ; 
 int /*<<< orphan*/  XENKBD_FIELD_REQ_ABS_POINTER ; 
 int /*<<< orphan*/  XENKBD_FIELD_REQ_MTOUCH ; 
 int /*<<< orphan*/  XENKBD_FIELD_WIDTH ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct xenkbd_info*) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xenkbd_info* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int* ptr_size ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct xenbus_device*,int,char*) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC15 (struct xenbus_device*,struct xenkbd_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct xenbus_device*) ; 

__attribute__((used)) static int FUNC17(struct xenbus_device *dev,
				  const struct xenbus_device_id *id)
{
	int ret, i;
	bool with_mtouch, with_kbd, with_ptr;
	struct xenkbd_info *info;
	struct input_dev *kbd, *ptr, *mtouch;

	info = FUNC9(sizeof(*info), GFP_KERNEL);
	if (!info) {
		FUNC12(dev, -ENOMEM, "allocating info structure");
		return -ENOMEM;
	}
	FUNC2(&dev->dev, info);
	info->xbdev = dev;
	info->irq = -1;
	info->gref = -1;
	FUNC11(info->phys, sizeof(info->phys), "xenbus/%s", dev->nodename);

	info->page = (void *)FUNC0(GFP_KERNEL | __GFP_ZERO);
	if (!info->page)
		goto error_nomem;

	/*
	 * The below are reverse logic, e.g. if the feature is set, then
	 * do not expose the corresponding virtual device.
	 */
	with_kbd = !FUNC13(dev->otherend,
					 XENKBD_FIELD_FEAT_DSBL_KEYBRD, 0);

	with_ptr = !FUNC13(dev->otherend,
					 XENKBD_FIELD_FEAT_DSBL_POINTER, 0);

	/* Direct logic: if set, then create multi-touch device. */
	with_mtouch = FUNC13(dev->otherend,
					   XENKBD_FIELD_FEAT_MTOUCH, 0);
	if (with_mtouch) {
		ret = FUNC14(XBT_NIL, dev->nodename,
				   XENKBD_FIELD_REQ_MTOUCH, "1");
		if (ret) {
			FUNC10("xenkbd: can't request multi-touch");
			with_mtouch = 0;
		}
	}

	/* keyboard */
	if (with_kbd) {
		kbd = FUNC3();
		if (!kbd)
			goto error_nomem;
		kbd->name = "Xen Virtual Keyboard";
		kbd->phys = info->phys;
		kbd->id.bustype = BUS_PCI;
		kbd->id.vendor = 0x5853;
		kbd->id.product = 0xffff;

		FUNC1(EV_KEY, kbd->evbit);
		for (i = KEY_ESC; i < KEY_UNKNOWN; i++)
			FUNC1(i, kbd->keybit);
		for (i = KEY_OK; i < KEY_MAX; i++)
			FUNC1(i, kbd->keybit);

		ret = FUNC6(kbd);
		if (ret) {
			FUNC4(kbd);
			FUNC12(dev, ret,
					 "input_register_device(kbd)");
			goto error;
		}
		info->kbd = kbd;
	}

	/* pointing device */
	if (with_ptr) {
		unsigned int abs;

		/* Set input abs params to match backend screen res */
		abs = FUNC13(dev->otherend,
					   XENKBD_FIELD_FEAT_ABS_POINTER, 0);
		ptr_size[KPARAM_X] = FUNC13(dev->otherend,
							  XENKBD_FIELD_WIDTH,
							  ptr_size[KPARAM_X]);
		ptr_size[KPARAM_Y] = FUNC13(dev->otherend,
							  XENKBD_FIELD_HEIGHT,
							  ptr_size[KPARAM_Y]);
		if (abs) {
			ret = FUNC14(XBT_NIL, dev->nodename,
					   XENKBD_FIELD_REQ_ABS_POINTER, "1");
			if (ret) {
				FUNC10("xenkbd: can't request abs-pointer\n");
				abs = 0;
			}
		}

		ptr = FUNC3();
		if (!ptr)
			goto error_nomem;
		ptr->name = "Xen Virtual Pointer";
		ptr->phys = info->phys;
		ptr->id.bustype = BUS_PCI;
		ptr->id.vendor = 0x5853;
		ptr->id.product = 0xfffe;

		if (abs) {
			FUNC1(EV_ABS, ptr->evbit);
			FUNC7(ptr, ABS_X, 0,
					     ptr_size[KPARAM_X], 0, 0);
			FUNC7(ptr, ABS_Y, 0,
					     ptr_size[KPARAM_Y], 0, 0);
		} else {
			FUNC8(ptr, EV_REL, REL_X);
			FUNC8(ptr, EV_REL, REL_Y);
		}
		FUNC8(ptr, EV_REL, REL_WHEEL);

		FUNC1(EV_KEY, ptr->evbit);
		for (i = BTN_LEFT; i <= BTN_TASK; i++)
			FUNC1(i, ptr->keybit);

		ret = FUNC6(ptr);
		if (ret) {
			FUNC4(ptr);
			FUNC12(dev, ret,
					 "input_register_device(ptr)");
			goto error;
		}
		info->ptr = ptr;
	}

	/* multi-touch device */
	if (with_mtouch) {
		int num_cont, width, height;

		mtouch = FUNC3();
		if (!mtouch)
			goto error_nomem;

		num_cont = FUNC13(info->xbdev->otherend,
						XENKBD_FIELD_MT_NUM_CONTACTS,
						1);
		width = FUNC13(info->xbdev->otherend,
					     XENKBD_FIELD_MT_WIDTH,
					     XENFB_WIDTH);
		height = FUNC13(info->xbdev->otherend,
					      XENKBD_FIELD_MT_HEIGHT,
					      XENFB_HEIGHT);

		mtouch->name = "Xen Virtual Multi-touch";
		mtouch->phys = info->phys;
		mtouch->id.bustype = BUS_PCI;
		mtouch->id.vendor = 0x5853;
		mtouch->id.product = 0xfffd;

		FUNC7(mtouch, ABS_MT_TOUCH_MAJOR,
				     0, 255, 0, 0);
		FUNC7(mtouch, ABS_MT_POSITION_X,
				     0, width, 0, 0);
		FUNC7(mtouch, ABS_MT_POSITION_Y,
				     0, height, 0, 0);

		ret = FUNC5(mtouch, num_cont, INPUT_MT_DIRECT);
		if (ret) {
			FUNC4(mtouch);
			FUNC12(info->xbdev, ret,
					 "input_mt_init_slots");
			goto error;
		}

		ret = FUNC6(mtouch);
		if (ret) {
			FUNC4(mtouch);
			FUNC12(info->xbdev, ret,
					 "input_register_device(mtouch)");
			goto error;
		}
		info->mtouch_cur_contact_id = -1;
		info->mtouch = mtouch;
	}

	if (!(with_kbd || with_ptr || with_mtouch)) {
		ret = -ENXIO;
		goto error;
	}

	ret = FUNC15(dev, info);
	if (ret < 0)
		goto error;

	return 0;

 error_nomem:
	ret = -ENOMEM;
	FUNC12(dev, ret, "allocating device memory");
 error:
	FUNC16(dev);
	return ret;
}