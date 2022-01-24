#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct vibra_info {TYPE_3__* input_dev; int /*<<< orphan*/  play_work; int /*<<< orphan*/  coexist; TYPE_7__* dev; } ;
struct twl4030_vibra_data {int dummy; } ;
struct TYPE_16__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_7__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_14__ {int version; } ;
struct TYPE_15__ {char* name; int /*<<< orphan*/  ffbit; int /*<<< orphan*/  close; TYPE_2__ id; } ;
struct TYPE_13__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FF_RUMBLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,char*) ; 
 struct twl4030_vibra_data* FUNC4 (TYPE_7__*) ; 
 TYPE_3__* FUNC5 (TYPE_7__*) ; 
 struct vibra_info* FUNC6 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct vibra_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct vibra_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct twl4030_vibra_data*,struct device_node*) ; 
 int /*<<< orphan*/  twl4030_vibra_close ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  vibra_play ; 
 int /*<<< orphan*/  vibra_play_work ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct twl4030_vibra_data *pdata = FUNC4(&pdev->dev);
	struct device_node *twl4030_core_node = pdev->dev.parent->of_node;
	struct vibra_info *info;
	int ret;

	if (!pdata && !twl4030_core_node) {
		FUNC2(&pdev->dev, "platform_data not available\n");
		return -EINVAL;
	}

	info = FUNC6(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = &pdev->dev;
	info->coexist = FUNC12(pdata, twl4030_core_node);
	FUNC0(&info->play_work, vibra_play_work);

	info->input_dev = FUNC5(&pdev->dev);
	if (info->input_dev == NULL) {
		FUNC3(&pdev->dev, "couldn't allocate input device\n");
		return -ENOMEM;
	}

	FUNC10(info->input_dev, info);

	info->input_dev->name = "twl4030:vibrator";
	info->input_dev->id.version = 1;
	info->input_dev->close = twl4030_vibra_close;
	FUNC1(FF_RUMBLE, info->input_dev->ffbit);

	ret = FUNC7(info->input_dev, NULL, vibra_play);
	if (ret < 0) {
		FUNC2(&pdev->dev, "couldn't register vibrator to FF\n");
		return ret;
	}

	ret = FUNC9(info->input_dev);
	if (ret < 0) {
		FUNC2(&pdev->dev, "couldn't register input device\n");
		goto err_iff;
	}

	FUNC13();

	FUNC11(pdev, info);
	return 0;

err_iff:
	FUNC8(info->input_dev);
	return ret;
}