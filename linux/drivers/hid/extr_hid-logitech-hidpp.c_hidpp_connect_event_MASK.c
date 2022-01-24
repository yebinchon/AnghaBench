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
struct input_dev {int dummy; } ;
struct TYPE_2__ {int online; scalar_t__ ps; int /*<<< orphan*/  level; int /*<<< orphan*/  status; } ;
struct hidpp_device {int quirks; int protocol_major; char* name; int capabilities; struct input_dev* delayed_input; TYPE_1__ battery; int /*<<< orphan*/  connected; struct hid_device* hid_dev; } ;
struct hid_device {char* name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HIDPP_CAPABILITY_BATTERY_MILEAGE ; 
 int HIDPP_CAPABILITY_HIDPP10_BATTERY ; 
 int HIDPP_CAPABILITY_HIDPP20_BATTERY ; 
 int HIDPP_QUIRK_CLASS_K400 ; 
 int HIDPP_QUIRK_CLASS_M560 ; 
 int HIDPP_QUIRK_CLASS_WTP ; 
 int HIDPP_QUIRK_HIDPP_CONSUMER_VENDOR_KEYS ; 
 int HIDPP_QUIRK_HIDPP_EXTRA_MOUSE_BTNS ; 
 int HIDPP_QUIRK_HIDPP_WHEELS ; 
 int HIDPP_QUIRK_HI_RES_SCROLL ; 
 int HIDPP_QUIRK_NO_HIDINPUT ; 
 int /*<<< orphan*/  POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*,...) ; 
 int FUNC4 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hidpp_device*) ; 
 int FUNC6 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hidpp_device*) ; 
 int FUNC9 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct hidpp_device*) ; 
 struct input_dev* FUNC11 (struct hid_device*) ; 
 char* FUNC12 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct hidpp_device*,struct input_dev*) ; 
 int FUNC15 (struct hidpp_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct input_dev*) ; 
 int FUNC17 (struct input_dev*) ; 
 int FUNC18 (struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int FUNC20 (struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int FUNC22 (struct hid_device*,int) ; 

__attribute__((used)) static void FUNC23(struct hidpp_device *hidpp)
{
	struct hid_device *hdev = hidpp->hid_dev;
	int ret = 0;
	bool connected = FUNC0(&hidpp->connected);
	struct input_dev *input;
	char *name, *devm_name;

	if (!connected) {
		if (hidpp->battery.ps) {
			hidpp->battery.online = false;
			hidpp->battery.status = POWER_SUPPLY_STATUS_UNKNOWN;
			hidpp->battery.level = POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN;
			FUNC21(hidpp->battery.ps);
		}
		return;
	}

	if (hidpp->quirks & HIDPP_QUIRK_CLASS_WTP) {
		ret = FUNC22(hdev, connected);
		if (ret)
			return;
	} else if (hidpp->quirks & HIDPP_QUIRK_CLASS_M560) {
		ret = FUNC20(hdev, connected);
		if (ret)
			return;
	} else if (hidpp->quirks & HIDPP_QUIRK_CLASS_K400) {
		ret = FUNC18(hdev, connected);
		if (ret)
			return;
	}

	if (hidpp->quirks & HIDPP_QUIRK_HIDPP_WHEELS) {
		ret = FUNC9(hidpp);
		if (ret)
			return;
	}

	if (hidpp->quirks & HIDPP_QUIRK_HIDPP_EXTRA_MOUSE_BTNS) {
		ret = FUNC6(hidpp);
		if (ret)
			return;
	}

	if (hidpp->quirks & HIDPP_QUIRK_HIDPP_CONSUMER_VENDOR_KEYS) {
		ret = FUNC4(hidpp);
		if (ret)
			return;
	}

	/* the device is already connected, we can ask for its name and
	 * protocol */
	if (!hidpp->protocol_major) {
		ret = FUNC15(hidpp);
		if (ret) {
			FUNC3(hdev, "Can not get the protocol version.\n");
			return;
		}
	}

	if (hidpp->name == hdev->name && hidpp->protocol_major >= 2) {
		name = FUNC12(hidpp);
		if (name) {
			devm_name = FUNC1(&hdev->dev, GFP_KERNEL,
						   "%s", name);
			FUNC19(name);
			if (!devm_name)
				return;

			hidpp->name = devm_name;
		}
	}

	FUNC13(hidpp);

	/* forward current battery state */
	if (hidpp->capabilities & HIDPP_CAPABILITY_HIDPP10_BATTERY) {
		FUNC5(hidpp);
		if (hidpp->capabilities & HIDPP_CAPABILITY_BATTERY_MILEAGE)
			FUNC7(hidpp);
		else
			FUNC8(hidpp);
	} else if (hidpp->capabilities & HIDPP_CAPABILITY_HIDPP20_BATTERY) {
		FUNC10(hidpp);
	}
	if (hidpp->battery.ps)
		FUNC21(hidpp->battery.ps);

	if (hidpp->quirks & HIDPP_QUIRK_HI_RES_SCROLL)
		FUNC2(hidpp);

	if (!(hidpp->quirks & HIDPP_QUIRK_NO_HIDINPUT) || hidpp->delayed_input)
		/* if the input nodes are already created, we can stop now */
		return;

	input = FUNC11(hdev);
	if (!input) {
		FUNC3(hdev, "cannot allocate new input device: %d\n", ret);
		return;
	}

	FUNC14(hidpp, input);

	ret = FUNC17(input);
	if (ret)
		FUNC16(input);

	hidpp->delayed_input = input;
}