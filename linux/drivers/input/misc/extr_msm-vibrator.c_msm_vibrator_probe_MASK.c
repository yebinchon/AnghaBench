#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_vibrator {int enabled; TYPE_2__* input; int /*<<< orphan*/  worker; int /*<<< orphan*/  mutex; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  vcc; } ;
struct TYPE_7__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  close; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msm_vibrator* FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct msm_vibrator*) ; 
 int /*<<< orphan*/  msm_vibrator_close ; 
 int /*<<< orphan*/  msm_vibrator_play_effect ; 
 int /*<<< orphan*/  msm_vibrator_worker ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct msm_vibrator*) ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct msm_vibrator *vibrator;
	struct resource *res;
	int ret;

	vibrator = FUNC8(&pdev->dev, sizeof(*vibrator), GFP_KERNEL);
	if (!vibrator)
		return -ENOMEM;

	vibrator->input = FUNC6(&pdev->dev);
	if (!vibrator->input)
		return -ENOMEM;

	vibrator->vcc = FUNC9(&pdev->dev, "vcc");
	if (FUNC1(vibrator->vcc)) {
		if (FUNC2(vibrator->vcc) != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "Failed to get regulator: %ld\n",
				FUNC2(vibrator->vcc));
		return FUNC2(vibrator->vcc);
	}

	vibrator->enable_gpio = FUNC5(&pdev->dev, "enable",
					       GPIOD_OUT_LOW);
	if (FUNC1(vibrator->enable_gpio)) {
		if (FUNC2(vibrator->enable_gpio) != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "Failed to get enable gpio: %ld\n",
				FUNC2(vibrator->enable_gpio));
		return FUNC2(vibrator->enable_gpio);
	}

	vibrator->clk = FUNC4(&pdev->dev, "pwm");
	if (FUNC1(vibrator->clk)) {
		if (FUNC2(vibrator->clk) != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "Failed to lookup pwm clock: %ld\n",
				FUNC2(vibrator->clk));
		return FUNC2(vibrator->clk);
	}

	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(&pdev->dev, "Failed to get platform resource\n");
		return -ENODEV;
	}

	vibrator->base = FUNC7(&pdev->dev, res->start,
				     FUNC17(res));
	if (!vibrator->base) {
		FUNC3(&pdev->dev, "Failed to iomap resource.\n");
		return -ENOMEM;
	}

	vibrator->enabled = false;
	FUNC14(&vibrator->mutex);
	FUNC0(&vibrator->worker, msm_vibrator_worker);

	vibrator->input->name = "msm-vibrator";
	vibrator->input->id.bustype = BUS_HOST;
	vibrator->input->close = msm_vibrator_close;

	FUNC13(vibrator->input, vibrator);
	FUNC12(vibrator->input, EV_FF, FF_RUMBLE);

	ret = FUNC10(vibrator->input, NULL,
				      msm_vibrator_play_effect);
	if (ret) {
		FUNC3(&pdev->dev, "Failed to create ff memless: %d", ret);
		return ret;
	}

	ret = FUNC11(vibrator->input);
	if (ret) {
		FUNC3(&pdev->dev, "Failed to register input device: %d", ret);
		return ret;
	}

	FUNC16(pdev, vibrator);

	return 0;
}