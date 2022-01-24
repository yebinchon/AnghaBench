#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_8__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_9__ {char* name; char* phys; int keycodesize; int keycodemax; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; scalar_t__* keycode; TYPE_1__ id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 scalar_t__ KEY_F1 ; 
 scalar_t__ KEY_RESERVED ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_atlas_button_handler ; 
 int /*<<< orphan*/  acpi_atlas_button_setup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct acpi_device*) ; 
 scalar_t__* atlas_keymap ; 
 TYPE_2__* FUNC4 () ; 
 TYPE_2__* input_dev ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct acpi_device *device)
{
	acpi_status status;
	int i;
	int err;

	input_dev = FUNC4();
	if (!input_dev) {
		FUNC9("unable to allocate input device\n");
		return -ENOMEM;
	}

	input_dev->name = "Atlas ACPI button driver";
	input_dev->phys = "ASIM0000/atlas/input0";
	input_dev->id.bustype = BUS_HOST;
	input_dev->keycode = atlas_keymap;
	input_dev->keycodesize = sizeof(unsigned short);
	input_dev->keycodemax = FUNC1(atlas_keymap);

	FUNC7(input_dev, EV_MSC, MSC_SCAN);
	FUNC2(EV_KEY, input_dev->evbit);
	for (i = 0; i < FUNC1(atlas_keymap); i++) {
		if (i < 9) {
			atlas_keymap[i] = KEY_F1 + i;
			FUNC2(KEY_F1 + i, input_dev->keybit);
		} else
			atlas_keymap[i] = KEY_RESERVED;
	}

	err = FUNC6(input_dev);
	if (err) {
		FUNC9("couldn't register input device\n");
		FUNC5(input_dev);
		return err;
	}

	/* hookup button handler */
	status = FUNC3(device->handle,
				0x81, &acpi_atlas_button_handler,
				&acpi_atlas_button_setup, device);
	if (FUNC0(status)) {
		FUNC9("error installing addr spc handler\n");
		FUNC8(input_dev);
		err = -EINVAL;
	}

	return err;
}