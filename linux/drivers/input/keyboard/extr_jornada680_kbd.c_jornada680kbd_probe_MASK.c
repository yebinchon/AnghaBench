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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct jornadakbd {struct input_polled_dev* poll_dev; scalar_t__* keymap; } ;
struct input_polled_dev {int poll_interval; struct input_dev* input; int /*<<< orphan*/  poll; struct jornadakbd* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {int* evbit; char* name; char* phys; int keycodesize; int /*<<< orphan*/  keybit; TYPE_2__ id; TYPE_1__ dev; int /*<<< orphan*/  keycodemax; scalar_t__* keycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct input_polled_dev* FUNC5 (int /*<<< orphan*/ *) ; 
 struct jornadakbd* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jornada_scancodes ; 
 int /*<<< orphan*/  jornadakbd680_poll ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct jornadakbd *jornadakbd;
	struct input_polled_dev *poll_dev;
	struct input_dev *input_dev;
	int i, error;

	jornadakbd = FUNC6(&pdev->dev, sizeof(struct jornadakbd),
				  GFP_KERNEL);
	if (!jornadakbd)
		return -ENOMEM;

	poll_dev = FUNC5(&pdev->dev);
	if (!poll_dev) {
		FUNC4(&pdev->dev, "failed to allocate polled input device\n");
		return -ENOMEM;
	}

	jornadakbd->poll_dev = poll_dev;

	FUNC9(jornadakbd->keymap, jornada_scancodes,
		sizeof(jornadakbd->keymap));

	poll_dev->private = jornadakbd;
	poll_dev->poll = jornadakbd680_poll;
	poll_dev->poll_interval = 50; /* msec */

	input_dev = poll_dev->input;
	input_dev->evbit[0] = FUNC1(EV_KEY) | FUNC1(EV_REP);
	input_dev->name = "HP Jornada 680 keyboard";
	input_dev->phys = "jornadakbd/input0";
	input_dev->keycode = jornadakbd->keymap;
	input_dev->keycodesize = sizeof(unsigned short);
	input_dev->keycodemax = FUNC0(jornada_scancodes);
	input_dev->dev.parent = &pdev->dev;
	input_dev->id.bustype = BUS_HOST;

	for (i = 0; i < 128; i++)
		if (jornadakbd->keymap[i])
			FUNC3(jornadakbd->keymap[i], input_dev->keybit);
	FUNC2(KEY_RESERVED, input_dev->keybit);

	FUNC8(input_dev, EV_MSC, MSC_SCAN);

	error = FUNC7(jornadakbd->poll_dev);
	if (error) {
		FUNC4(&pdev->dev, "failed to register polled input device\n");
		return error;
	}

	return 0;
}