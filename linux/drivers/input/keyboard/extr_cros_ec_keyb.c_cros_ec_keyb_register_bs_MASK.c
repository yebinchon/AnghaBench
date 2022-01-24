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
union ec_response_get_next_data {int /*<<< orphan*/  switches; int /*<<< orphan*/  buttons; } ;
typedef  int u32 ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {int version; scalar_t__ product; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char const* phys; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  evbit; } ;
struct device {int dummy; } ;
struct cros_ec_keyb {struct input_dev* bs_idev; struct device* dev; struct cros_ec_device* ec; } ;
struct cros_ec_device {int /*<<< orphan*/  phys_name; } ;
struct cros_ec_bs_map {scalar_t__ ev_type; int /*<<< orphan*/  code; int /*<<< orphan*/  bit; } ;

/* Variables and functions */
 int FUNC0 (struct cros_ec_bs_map*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_VIRTUAL ; 
 int /*<<< orphan*/  EC_MKBP_EVENT_BUTTON ; 
 int /*<<< orphan*/  EC_MKBP_EVENT_SWITCH ; 
 int /*<<< orphan*/  EC_MKBP_INFO_SUPPORTED ; 
 int ENOMEM ; 
 scalar_t__ EV_KEY ; 
 int /*<<< orphan*/  EV_REP ; 
 scalar_t__ EV_SW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cros_ec_bs_map* cros_ec_keyb_bs ; 
 int FUNC3 (struct cros_ec_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ec_response_get_next_data*,int) ; 
 int FUNC4 (struct cros_ec_keyb*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct input_dev* FUNC6 (struct device*) ; 
 char* FUNC7 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct input_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,struct cros_ec_keyb*) ; 

__attribute__((used)) static int FUNC12(struct cros_ec_keyb *ckdev)
{
	struct cros_ec_device *ec_dev = ckdev->ec;
	struct device *dev = ckdev->dev;
	struct input_dev *idev;
	union ec_response_get_next_data event_data = {};
	const char *phys;
	u32 buttons;
	u32 switches;
	int ret;
	int i;

	ret = FUNC3(ec_dev, EC_MKBP_INFO_SUPPORTED,
				EC_MKBP_EVENT_BUTTON, &event_data,
				sizeof(event_data.buttons));
	if (ret)
		return ret;
	buttons = FUNC8(&event_data.buttons);

	ret = FUNC3(ec_dev, EC_MKBP_INFO_SUPPORTED,
				EC_MKBP_EVENT_SWITCH, &event_data,
				sizeof(event_data.switches));
	if (ret)
		return ret;
	switches = FUNC8(&event_data.switches);

	if (!buttons && !switches)
		return 0;

	/*
	 * We call the non-matrix buttons/switches 'input1', if present.
	 * Allocate phys before input dev, to ensure correct tear-down
	 * ordering.
	 */
	phys = FUNC7(dev, GFP_KERNEL, "%s/input1", ec_dev->phys_name);
	if (!phys)
		return -ENOMEM;

	idev = FUNC6(dev);
	if (!idev)
		return -ENOMEM;

	idev->name = "cros_ec_buttons";
	idev->phys = phys;
	FUNC2(EV_REP, idev->evbit);

	idev->id.bustype = BUS_VIRTUAL;
	idev->id.version = 1;
	idev->id.product = 0;
	idev->dev.parent = dev;

	FUNC11(idev, ckdev);
	ckdev->bs_idev = idev;

	for (i = 0; i < FUNC0(cros_ec_keyb_bs); i++) {
		const struct cros_ec_bs_map *map = &cros_ec_keyb_bs[i];

		if ((map->ev_type == EV_KEY && (buttons & FUNC1(map->bit))) ||
		    (map->ev_type == EV_SW && (switches & FUNC1(map->bit))))
			FUNC10(idev, map->ev_type, map->code);
	}

	ret = FUNC4(ckdev);
	if (ret) {
		FUNC5(dev, "cannot query switches\n");
		return ret;
	}

	ret = FUNC9(ckdev->bs_idev);
	if (ret) {
		FUNC5(dev, "cannot register input device\n");
		return ret;
	}

	return 0;
}