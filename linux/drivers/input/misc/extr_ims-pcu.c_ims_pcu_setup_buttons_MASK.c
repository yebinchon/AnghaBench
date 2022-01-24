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
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int keycodesize; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  keycodemax; int /*<<< orphan*/ * keycode; TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct ims_pcu_buttons {struct input_dev* input; int /*<<< orphan*/ * keymap; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;
struct ims_pcu {int device_no; int /*<<< orphan*/  dev; TYPE_2__* ctrl_intf; int /*<<< orphan*/  udev; struct ims_pcu_buttons buttons; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int IMS_PCU_KEYMAP_LEN ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct input_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned short const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct ims_pcu *pcu,
				 const unsigned short *keymap,
				 size_t keymap_len)
{
	struct ims_pcu_buttons *buttons = &pcu->buttons;
	struct input_dev *input;
	int i;
	int error;

	input = FUNC4();
	if (!input) {
		FUNC3(pcu->dev,
			"Not enough memory for input input device\n");
		return -ENOMEM;
	}

	FUNC8(buttons->name, sizeof(buttons->name),
		 "IMS PCU#%d Button Interface", pcu->device_no);

	FUNC10(pcu->udev, buttons->phys, sizeof(buttons->phys));
	FUNC9(buttons->phys, "/input0", sizeof(buttons->phys));

	FUNC7(buttons->keymap, keymap, sizeof(*keymap) * keymap_len);

	input->name = buttons->name;
	input->phys = buttons->phys;
	FUNC11(pcu->udev, &input->id);
	input->dev.parent = &pcu->ctrl_intf->dev;

	input->keycode = buttons->keymap;
	input->keycodemax = FUNC0(buttons->keymap);
	input->keycodesize = sizeof(buttons->keymap[0]);

	FUNC2(EV_KEY, input->evbit);
	for (i = 0; i < IMS_PCU_KEYMAP_LEN; i++)
		FUNC2(buttons->keymap[i], input->keybit);
	FUNC1(KEY_RESERVED, input->keybit);

	error = FUNC6(input);
	if (error) {
		FUNC3(pcu->dev,
			"Failed to register buttons input device: %d\n",
			error);
		FUNC5(input);
		return error;
	}

	buttons->input = input;
	return 0;
}