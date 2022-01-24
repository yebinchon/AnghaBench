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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct input_polled_dev {struct input_dev* input; int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  poll; struct buttons_dev* private; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; char* phys; int keycodemax; int keycodesize; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/ * keycode; TYPE_2__ dev; TYPE_1__ id; } ;
struct buttons_dev {int /*<<< orphan*/  reg; struct input_polled_dev* poll_dev; int /*<<< orphan*/ * keymap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int /*<<< orphan*/  BUTTONS_POLL_INTERVAL ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cobalt_map ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buttons_dev*) ; 
 int /*<<< orphan*/  handle_buttons ; 
 struct input_polled_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_polled_dev*) ; 
 int FUNC6 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buttons_dev*) ; 
 struct buttons_dev* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct buttons_dev *bdev;
	struct input_polled_dev *poll_dev;
	struct input_dev *input;
	struct resource *res;
	int error, i;

	bdev = FUNC11(sizeof(struct buttons_dev), GFP_KERNEL);
	poll_dev = FUNC4();
	if (!bdev || !poll_dev) {
		error = -ENOMEM;
		goto err_free_mem;
	}

	FUNC12(bdev->keymap, cobalt_map, sizeof(bdev->keymap));

	poll_dev->private = bdev;
	poll_dev->poll = handle_buttons;
	poll_dev->poll_interval = BUTTONS_POLL_INTERVAL;

	input = poll_dev->input;
	input->name = "Cobalt buttons";
	input->phys = "cobalt/input0";
	input->id.bustype = BUS_HOST;
	input->dev.parent = &pdev->dev;

	input->keycode = bdev->keymap;
	input->keycodemax = FUNC0(bdev->keymap);
	input->keycodesize = sizeof(unsigned short);

	FUNC7(input, EV_MSC, MSC_SCAN);
	FUNC2(EV_KEY, input->evbit);
	for (i = 0; i < FUNC0(cobalt_map); i++)
		FUNC2(bdev->keymap[i], input->keybit);
	FUNC1(KEY_RESERVED, input->keybit);

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		error = -EBUSY;
		goto err_free_mem;
	}

	bdev->poll_dev = poll_dev;
	bdev->reg = FUNC8(res->start, FUNC14(res));
	FUNC3(&pdev->dev, bdev);

	error = FUNC6(poll_dev);
	if (error)
		goto err_iounmap;

	return 0;

 err_iounmap:
	FUNC9(bdev->reg);
 err_free_mem:
	FUNC5(poll_dev);
	FUNC10(bdev);
	return error;
}