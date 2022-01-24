#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct vibra_info {int enabled; TYPE_2__* input_dev; int /*<<< orphan*/  play_work; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; } ;
struct TYPE_13__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_6__ dev; } ;
struct TYPE_11__ {scalar_t__ version; } ;
struct TYPE_12__ {char* name; int /*<<< orphan*/  close; TYPE_1__ id; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_6__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (TYPE_6__*) ; 
 struct vibra_info* FUNC5 (TYPE_6__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,struct vibra_info*) ; 
 int /*<<< orphan*/  sc27xx_vibra_close ; 
 int FUNC10 (struct vibra_info*) ; 
 int /*<<< orphan*/  sc27xx_vibra_play ; 
 int /*<<< orphan*/  sc27xx_vibra_play_work ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct vibra_info *info;
	int error;

	info = FUNC5(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->regmap = FUNC2(pdev->dev.parent, NULL);
	if (!info->regmap) {
		FUNC1(&pdev->dev, "failed to get vibrator regmap.\n");
		return -ENODEV;
	}

	error = FUNC3(&pdev->dev, "reg", &info->base);
	if (error) {
		FUNC1(&pdev->dev, "failed to get vibrator base address.\n");
		return error;
	}

	info->input_dev = FUNC4(&pdev->dev);
	if (!info->input_dev) {
		FUNC1(&pdev->dev, "failed to allocate input device.\n");
		return -ENOMEM;
	}

	info->input_dev->name = "sc27xx:vibrator";
	info->input_dev->id.version = 0;
	info->input_dev->close = sc27xx_vibra_close;

	FUNC9(info->input_dev, info);
	FUNC8(info->input_dev, EV_FF, FF_RUMBLE);
	FUNC0(&info->play_work, sc27xx_vibra_play_work);
	info->enabled = false;

	error = FUNC10(info);
	if (error) {
		FUNC1(&pdev->dev, "failed to initialize the vibrator.\n");
		return error;
	}

	error = FUNC6(info->input_dev, NULL,
					sc27xx_vibra_play);
	if (error) {
		FUNC1(&pdev->dev, "failed to register vibrator to FF.\n");
		return error;
	}

	error = FUNC7(info->input_dev);
	if (error) {
		FUNC1(&pdev->dev, "failed to register input device.\n");
		return error;
	}

	return 0;
}