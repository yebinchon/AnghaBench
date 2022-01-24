#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_10__ dev; TYPE_4__* altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_14__ {TYPE_10__* parent; } ;
struct input_dev {char* name; int /*<<< orphan*/  keybit; int /*<<< orphan*/  mscbit; int /*<<< orphan*/  relbit; int /*<<< orphan*/  absbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; } ;
struct TYPE_18__ {int programmableDelay; int /*<<< orphan*/  jitterDelay; int /*<<< orphan*/  stylusButtonLower; int /*<<< orphan*/  stylusButtonUpper; int /*<<< orphan*/  mouseButtonRight; int /*<<< orphan*/  mouseButtonMiddle; int /*<<< orphan*/  mouseButtonLeft; void* yTilt; void* xTilt; int /*<<< orphan*/  toolMode; int /*<<< orphan*/  coordinateMode; int /*<<< orphan*/  pointerMode; } ;
struct TYPE_19__ {int /*<<< orphan*/  usbPath; } ;
struct aiptek {int lastMacro; int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; TYPE_7__* urb; struct input_dev* inputdev; TYPE_5__ curSetting; TYPE_6__ features; TYPE_5__ newSetting; scalar_t__ previousJitterable; scalar_t__ endDelay; scalar_t__ inDelay; int /*<<< orphan*/  ifnum; struct usb_interface* intf; } ;
struct TYPE_20__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_16__ {int bNumEndpoints; int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_17__ {TYPE_2__* endpoint; TYPE_3__ desc; } ;
struct TYPE_15__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_TILT_X ; 
 int /*<<< orphan*/  ABS_TILT_Y ; 
 int /*<<< orphan*/  ABS_WHEEL ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  AIPTEK_COORDINATE_ABSOLUTE_MODE ; 
 int /*<<< orphan*/  AIPTEK_MOUSE_LEFT_BUTTON ; 
 int /*<<< orphan*/  AIPTEK_MOUSE_MIDDLE_BUTTON ; 
 int /*<<< orphan*/  AIPTEK_MOUSE_RIGHT_BUTTON ; 
 int /*<<< orphan*/  AIPTEK_PACKET_LENGTH ; 
 int /*<<< orphan*/  AIPTEK_POINTER_EITHER_MODE ; 
 int AIPTEK_PROGRAMMABLE_DELAY_100 ; 
 int AIPTEK_PROGRAMMABLE_DELAY_200 ; 
 int AIPTEK_PROGRAMMABLE_DELAY_25 ; 
 int AIPTEK_PROGRAMMABLE_DELAY_300 ; 
 int AIPTEK_PROGRAMMABLE_DELAY_400 ; 
 int AIPTEK_PROGRAMMABLE_DELAY_50 ; 
 int /*<<< orphan*/  AIPTEK_STYLUS_LOWER_BUTTON ; 
 int /*<<< orphan*/  AIPTEK_STYLUS_UPPER_BUTTON ; 
 void* AIPTEK_TILT_DISABLE ; 
 int AIPTEK_TILT_MAX ; 
 int /*<<< orphan*/  AIPTEK_TILT_MIN ; 
 int /*<<< orphan*/  AIPTEK_TOOL_BUTTON_PEN_MODE ; 
 int AIPTEK_WHEEL_MAX ; 
 int /*<<< orphan*/  AIPTEK_WHEEL_MIN ; 
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MSC_SERIAL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int* absEvents ; 
 int /*<<< orphan*/  aiptek_attribute_group ; 
 int /*<<< orphan*/  aiptek_close ; 
 int /*<<< orphan*/  aiptek_irq ; 
 int /*<<< orphan*/  aiptek_open ; 
 int /*<<< orphan*/  FUNC2 (struct aiptek*) ; 
 int* buttonEvents ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,char*,...) ; 
 int* eventTypes ; 
 scalar_t__ FUNC6 (struct input_dev*,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,struct aiptek*) ; 
 struct usb_device* FUNC12 (struct usb_interface*) ; 
 int /*<<< orphan*/  jitterDelay ; 
 int /*<<< orphan*/  FUNC13 (struct aiptek*) ; 
 struct aiptek* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int* macroKeyEvents ; 
 void* programmableDelay ; 
 int* relEvents ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct aiptek*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct usb_interface*,struct aiptek*) ; 
 int /*<<< orphan*/  FUNC26 (struct usb_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC27(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_device *usbdev = FUNC12(intf);
	struct usb_endpoint_descriptor *endpoint;
	struct aiptek *aiptek;
	struct input_dev *inputdev;
	int i;
	int speeds[] = { 0,
		AIPTEK_PROGRAMMABLE_DELAY_50,
		AIPTEK_PROGRAMMABLE_DELAY_400,
		AIPTEK_PROGRAMMABLE_DELAY_25,
		AIPTEK_PROGRAMMABLE_DELAY_100,
		AIPTEK_PROGRAMMABLE_DELAY_200,
		AIPTEK_PROGRAMMABLE_DELAY_300
	};
	int err = -ENOMEM;

	/* programmableDelay is where the command-line specified
	 * delay is kept. We make it the first element of speeds[],
	 * so therefore, your override speed is tried first, then the
	 * remainder. Note that the default value of 400ms will be tried
	 * if you do not specify any command line parameter.
	 */
	speeds[0] = programmableDelay;

	aiptek = FUNC14(sizeof(struct aiptek), GFP_KERNEL);
	inputdev = FUNC7();
	if (!aiptek || !inputdev) {
		FUNC5(&intf->dev,
			 "cannot allocate memory or input device\n");
		goto fail1;
        }

	aiptek->data = FUNC18(usbdev, AIPTEK_PACKET_LENGTH,
					  GFP_KERNEL, &aiptek->data_dma);
        if (!aiptek->data) {
		FUNC5(&intf->dev, "cannot allocate usb buffer\n");
		goto fail1;
	}

	aiptek->urb = FUNC19(0, GFP_KERNEL);
	if (!aiptek->urb) {
	        FUNC5(&intf->dev, "cannot allocate urb\n");
		goto fail2;
	}

	aiptek->inputdev = inputdev;
	aiptek->intf = intf;
	aiptek->ifnum = intf->altsetting[0].desc.bInterfaceNumber;
	aiptek->inDelay = 0;
	aiptek->endDelay = 0;
	aiptek->previousJitterable = 0;
	aiptek->lastMacro = -1;

	/* Set up the curSettings struct. Said struct contains the current
	 * programmable parameters. The newSetting struct contains changes
	 * the user makes to the settings via the sysfs interface. Those
	 * changes are not "committed" to curSettings until the user
	 * writes to the sysfs/.../execute file.
	 */
	aiptek->curSetting.pointerMode = AIPTEK_POINTER_EITHER_MODE;
	aiptek->curSetting.coordinateMode = AIPTEK_COORDINATE_ABSOLUTE_MODE;
	aiptek->curSetting.toolMode = AIPTEK_TOOL_BUTTON_PEN_MODE;
	aiptek->curSetting.xTilt = AIPTEK_TILT_DISABLE;
	aiptek->curSetting.yTilt = AIPTEK_TILT_DISABLE;
	aiptek->curSetting.mouseButtonLeft = AIPTEK_MOUSE_LEFT_BUTTON;
	aiptek->curSetting.mouseButtonMiddle = AIPTEK_MOUSE_MIDDLE_BUTTON;
	aiptek->curSetting.mouseButtonRight = AIPTEK_MOUSE_RIGHT_BUTTON;
	aiptek->curSetting.stylusButtonUpper = AIPTEK_STYLUS_UPPER_BUTTON;
	aiptek->curSetting.stylusButtonLower = AIPTEK_STYLUS_LOWER_BUTTON;
	aiptek->curSetting.jitterDelay = jitterDelay;
	aiptek->curSetting.programmableDelay = programmableDelay;

	/* Both structs should have equivalent settings
	 */
	aiptek->newSetting = aiptek->curSetting;

	/* Determine the usb devices' physical path.
	 * Asketh not why we always pretend we're using "../input0",
	 * but I suspect this will have to be refactored one
	 * day if a single USB device can be a keyboard & a mouse
	 * & a tablet, and the inputX number actually will tell
	 * us something...
	 */
	FUNC23(usbdev, aiptek->features.usbPath,
			sizeof(aiptek->features.usbPath));
	FUNC15(aiptek->features.usbPath, "/input0",
		sizeof(aiptek->features.usbPath));

	/* Set up client data, pointers to open and close routines
	 * for the input device.
	 */
	inputdev->name = "Aiptek";
	inputdev->phys = aiptek->features.usbPath;
	FUNC26(usbdev, &inputdev->id);
	inputdev->dev.parent = &intf->dev;

	FUNC11(inputdev, aiptek);

	inputdev->open = aiptek_open;
	inputdev->close = aiptek_close;

	/* Now program the capacities of the tablet, in terms of being
	 * an input device.
	 */
	for (i = 0; i < FUNC0(eventTypes); ++i)
	        FUNC1(eventTypes[i], inputdev->evbit);

	for (i = 0; i < FUNC0(absEvents); ++i)
	        FUNC1(absEvents[i], inputdev->absbit);

	for (i = 0; i < FUNC0(relEvents); ++i)
	        FUNC1(relEvents[i], inputdev->relbit);

	FUNC1(MSC_SERIAL, inputdev->mscbit);

	/* Set up key and button codes */
	for (i = 0; i < FUNC0(buttonEvents); ++i)
		FUNC1(buttonEvents[i], inputdev->keybit);

	for (i = 0; i < FUNC0(macroKeyEvents); ++i)
		FUNC1(macroKeyEvents[i], inputdev->keybit);

	/*
	 * Program the input device coordinate capacities. We do not yet
	 * know what maximum X, Y, and Z values are, so we're putting fake
	 * values in. Later, we'll ask the tablet to put in the correct
	 * values.
	 */
	FUNC10(inputdev, ABS_X, 0, 2999, 0, 0);
	FUNC10(inputdev, ABS_Y, 0, 2249, 0, 0);
	FUNC10(inputdev, ABS_PRESSURE, 0, 511, 0, 0);
	FUNC10(inputdev, ABS_TILT_X, AIPTEK_TILT_MIN, AIPTEK_TILT_MAX, 0, 0);
	FUNC10(inputdev, ABS_TILT_Y, AIPTEK_TILT_MIN, AIPTEK_TILT_MAX, 0, 0);
	FUNC10(inputdev, ABS_WHEEL, AIPTEK_WHEEL_MIN, AIPTEK_WHEEL_MAX - 1, 0, 0);

	/* Verify that a device really has an endpoint */
	if (intf->altsetting[0].desc.bNumEndpoints < 1) {
		FUNC3(&intf->dev,
			"interface has %d endpoints, but must have minimum 1\n",
			intf->altsetting[0].desc.bNumEndpoints);
		err = -EINVAL;
		goto fail3;
	}
	endpoint = &intf->altsetting[0].endpoint[0].desc;

	/* Go set up our URB, which is called when the tablet receives
	 * input.
	 */
	FUNC20(aiptek->urb,
			 usbdev,
			 FUNC24(usbdev,
					endpoint->bEndpointAddress),
			 aiptek->data, 8, aiptek_irq, aiptek,
			 endpoint->bInterval);

	aiptek->urb->transfer_dma = aiptek->data_dma;
	aiptek->urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	/* Program the tablet. This sets the tablet up in the mode
	 * specified in newSetting, and also queries the tablet's
	 * physical capacities.
	 *
	 * Sanity check: if a tablet doesn't like the slow programmatic
	 * delay, we often get sizes of 0x0. Let's use that as an indicator
	 * to try faster delays, up to 25 ms. If that logic fails, well, you'll
	 * have to explain to us how your tablet thinks it's 0x0, and yet that's
	 * not an error :-)
	 */

	for (i = 0; i < FUNC0(speeds); ++i) {
		aiptek->curSetting.programmableDelay = speeds[i];
		(void)FUNC2(aiptek);
		if (FUNC6(aiptek->inputdev, ABS_X) > 0) {
			FUNC4(&intf->dev,
				 "Aiptek using %d ms programming speed\n",
				 aiptek->curSetting.programmableDelay);
			break;
		}
	}

	/* Murphy says that some day someone will have a tablet that fails the
	   above test. That's you, Frederic Rodrigo */
	if (i == FUNC0(speeds)) {
		FUNC4(&intf->dev,
			 "Aiptek tried all speeds, no sane response\n");
		err = -EINVAL;
		goto fail3;
	}

	/* Associate this driver's struct with the usb interface.
	 */
	FUNC25(intf, aiptek);

	/* Set up the sysfs files
	 */
	err = FUNC16(&intf->dev.kobj, &aiptek_attribute_group);
	if (err) {
		FUNC5(&intf->dev, "cannot create sysfs group err: %d\n",
			 err);
		goto fail3;
        }

	/* Register the tablet as an Input Device
	 */
	err = FUNC9(aiptek->inputdev);
	if (err) {
		FUNC5(&intf->dev,
			 "input_register_device returned err: %d\n", err);
		goto fail4;
        }
	return 0;

 fail4:	FUNC17(&intf->dev.kobj, &aiptek_attribute_group);
 fail3: FUNC22(aiptek->urb);
 fail2:	FUNC21(usbdev, AIPTEK_PACKET_LENGTH, aiptek->data,
			  aiptek->data_dma);
 fail1: FUNC25(intf, NULL);
	FUNC8(inputdev);
	FUNC13(aiptek);
	return err;
}