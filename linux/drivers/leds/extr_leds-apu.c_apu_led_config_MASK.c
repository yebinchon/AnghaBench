#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct led_classdev {int max_brightness; int /*<<< orphan*/  (* brightness_set ) (struct led_classdev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  brightness; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct apu_led_priv {struct led_classdev cdev; TYPE_1__ param; } ;
struct apu_led_pdata {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  offset; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {struct apu_led_priv* pled; } ;

/* Variables and functions */
 int /*<<< orphan*/  APU1_IOSIZE ; 
 int FUNC0 (TYPE_3__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LED_CORE_SUSPENDRESUME ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,int /*<<< orphan*/ ) ; 
 TYPE_3__* apu1_led_profile ; 
 TYPE_2__* apu_led ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct apu_led_priv* FUNC3 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct led_classdev*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct apu_led_pdata *apuld)
{
	int i;
	int err;

	apu_led->pled = FUNC3(dev,
		FUNC0(apu1_led_profile), sizeof(struct apu_led_priv),
		GFP_KERNEL);

	if (!apu_led->pled)
		return -ENOMEM;

	for (i = 0; i < FUNC0(apu1_led_profile); i++) {
		struct apu_led_priv *pled = &apu_led->pled[i];
		struct led_classdev *led_cdev = &pled->cdev;

		led_cdev->name = apu1_led_profile[i].name;
		led_cdev->brightness = apu1_led_profile[i].brightness;
		led_cdev->max_brightness = 1;
		led_cdev->flags = LED_CORE_SUSPENDRESUME;
		led_cdev->brightness_set = apu1_led_brightness_set;

		pled->param.addr = FUNC2(dev,
				apu1_led_profile[i].offset, APU1_IOSIZE);
		if (!pled->param.addr) {
			err = -ENOMEM;
			goto error;
		}

		err = FUNC4(dev, led_cdev);
		if (err)
			goto error;

		FUNC1(led_cdev, apu1_led_profile[i].brightness);
	}

	return 0;

error:
	while (i-- > 0)
		FUNC5(&apu_led->pled[i].cdev);

	return err;
}