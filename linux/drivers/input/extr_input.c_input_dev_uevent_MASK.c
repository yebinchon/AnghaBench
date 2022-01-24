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
struct kobj_uevent_env {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int /*<<< orphan*/  swbit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  ffbit; int /*<<< orphan*/  sndbit; int /*<<< orphan*/  ledbit; int /*<<< orphan*/  mscbit; int /*<<< orphan*/  absbit; int /*<<< orphan*/  relbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  propbit; scalar_t__ uniq; scalar_t__ phys; scalar_t__ name; TYPE_1__ id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MAX ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  EV_MAX ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  EV_SND ; 
 int /*<<< orphan*/  EV_SW ; 
 int /*<<< orphan*/  FF_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  INPUT_PROP_MAX ; 
 int /*<<< orphan*/  KEY_MAX ; 
 int /*<<< orphan*/  LED_MAX ; 
 int /*<<< orphan*/  MSC_MAX ; 
 int /*<<< orphan*/  REL_MAX ; 
 int /*<<< orphan*/  SND_MAX ; 
 int /*<<< orphan*/  SW_MAX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *device, struct kobj_uevent_env *env)
{
	struct input_dev *dev = FUNC4(device);

	FUNC2("PRODUCT=%x/%x/%x/%x",
				dev->id.bustype, dev->id.vendor,
				dev->id.product, dev->id.version);
	if (dev->name)
		FUNC2("NAME=\"%s\"", dev->name);
	if (dev->phys)
		FUNC2("PHYS=\"%s\"", dev->phys);
	if (dev->uniq)
		FUNC2("UNIQ=\"%s\"", dev->uniq);

	FUNC0("PROP=", dev->propbit, INPUT_PROP_MAX);

	FUNC0("EV=", dev->evbit, EV_MAX);
	if (FUNC3(EV_KEY, dev->evbit))
		FUNC0("KEY=", dev->keybit, KEY_MAX);
	if (FUNC3(EV_REL, dev->evbit))
		FUNC0("REL=", dev->relbit, REL_MAX);
	if (FUNC3(EV_ABS, dev->evbit))
		FUNC0("ABS=", dev->absbit, ABS_MAX);
	if (FUNC3(EV_MSC, dev->evbit))
		FUNC0("MSC=", dev->mscbit, MSC_MAX);
	if (FUNC3(EV_LED, dev->evbit))
		FUNC0("LED=", dev->ledbit, LED_MAX);
	if (FUNC3(EV_SND, dev->evbit))
		FUNC0("SND=", dev->sndbit, SND_MAX);
	if (FUNC3(EV_FF, dev->evbit))
		FUNC0("FF=", dev->ffbit, FF_MAX);
	if (FUNC3(EV_SW, dev->evbit))
		FUNC0("SW=", dev->swbit, SW_MAX);

	FUNC1(dev);

	return 0;
}