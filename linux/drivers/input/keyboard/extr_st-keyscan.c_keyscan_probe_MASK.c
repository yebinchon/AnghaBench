#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct st_keyscan {scalar_t__ irq; int /*<<< orphan*/  clk; int /*<<< orphan*/  base; int /*<<< orphan*/  n_cols; int /*<<< orphan*/  n_rows; struct input_dev* input_dev; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_10__ {TYPE_3__* parent; } ;
struct input_dev {char* phys; TYPE_2__ id; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct input_dev* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct resource*) ; 
 struct st_keyscan* FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct st_keyscan*) ; 
 int FUNC10 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct input_dev*,struct st_keyscan*) ; 
 int FUNC12 (struct st_keyscan*) ; 
 int /*<<< orphan*/  keyscan_close ; 
 int /*<<< orphan*/  keyscan_isr ; 
 int /*<<< orphan*/  keyscan_open ; 
 int /*<<< orphan*/  FUNC13 (struct st_keyscan*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct input_dev*) ; 
 scalar_t__ FUNC15 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct st_keyscan*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct st_keyscan *keypad_data;
	struct input_dev *input_dev;
	struct resource *res;
	int error;

	if (!pdev->dev.of_node) {
		FUNC3(&pdev->dev, "no DT data present\n");
		return -EINVAL;
	}

	keypad_data = FUNC8(&pdev->dev, sizeof(*keypad_data),
				   GFP_KERNEL);
	if (!keypad_data)
		return -ENOMEM;

	input_dev = FUNC6(&pdev->dev);
	if (!input_dev) {
		FUNC3(&pdev->dev, "failed to allocate the input device\n");
		return -ENOMEM;
	}

	input_dev->name = pdev->name;
	input_dev->phys = "keyscan-keys/input0";
	input_dev->dev.parent = &pdev->dev;
	input_dev->open = keyscan_open;
	input_dev->close = keyscan_close;

	input_dev->id.bustype = BUS_HOST;

	keypad_data->input_dev = input_dev;

	error = FUNC12(keypad_data);
	if (error)
		return error;

	error = FUNC14(NULL, NULL,
					   keypad_data->n_rows,
					   keypad_data->n_cols,
					   NULL, input_dev);
	if (error) {
		FUNC3(&pdev->dev, "failed to build keymap\n");
		return error;
	}

	FUNC11(input_dev, keypad_data);

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	keypad_data->base = FUNC7(&pdev->dev, res);
	if (FUNC0(keypad_data->base))
		return FUNC1(keypad_data->base);

	keypad_data->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(keypad_data->clk)) {
		FUNC3(&pdev->dev, "cannot get clock\n");
		return FUNC1(keypad_data->clk);
	}

	error = FUNC2(keypad_data->clk);
	if (error) {
		FUNC3(&pdev->dev, "failed to enable clock\n");
		return error;
	}

	FUNC13(keypad_data);

	keypad_data->irq = FUNC15(pdev, 0);
	if (keypad_data->irq < 0)
		return -EINVAL;

	error = FUNC9(&pdev->dev, keypad_data->irq, keyscan_isr, 0,
				 pdev->name, keypad_data);
	if (error) {
		FUNC3(&pdev->dev, "failed to request IRQ\n");
		return error;
	}

	error = FUNC10(input_dev);
	if (error) {
		FUNC3(&pdev->dev, "failed to register input device\n");
		return error;
	}

	FUNC17(pdev, keypad_data);

	FUNC4(&pdev->dev, 1);

	return 0;
}