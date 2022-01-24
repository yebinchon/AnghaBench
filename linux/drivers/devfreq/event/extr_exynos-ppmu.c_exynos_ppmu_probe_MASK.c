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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;
struct exynos_ppmu {int num_events; TYPE_1__ ppmu; struct devfreq_event_dev** edev; struct devfreq_event_desc* desc; int /*<<< orphan*/ * dev; } ;
struct devfreq_event_dev {int dummy; } ;
struct devfreq_event_desc {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct devfreq_event_dev*) ; 
 int FUNC1 (struct devfreq_event_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct devfreq_event_dev* FUNC5 (int /*<<< orphan*/ *,struct devfreq_event_desc*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct platform_device*,struct exynos_ppmu*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct exynos_ppmu*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct exynos_ppmu *info;
	struct devfreq_event_dev **edev;
	struct devfreq_event_desc *desc;
	int i, ret = 0, size;

	info = FUNC6(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = &pdev->dev;

	/* Parse dt data to get resource */
	ret = FUNC7(pdev, info);
	if (ret < 0) {
		FUNC3(&pdev->dev,
			"failed to parse devicetree for resource\n");
		return ret;
	}
	desc = info->desc;

	size = sizeof(struct devfreq_event_dev *) * info->num_events;
	info->edev = FUNC6(&pdev->dev, size, GFP_KERNEL);
	if (!info->edev)
		return -ENOMEM;

	edev = info->edev;
	FUNC8(pdev, info);

	for (i = 0; i < info->num_events; i++) {
		edev[i] = FUNC5(&pdev->dev, &desc[i]);
		if (FUNC0(edev[i])) {
			ret = FUNC1(edev[i]);
			FUNC3(&pdev->dev,
				"failed to add devfreq-event device\n");
			return FUNC1(edev[i]);
		}

		FUNC9("exynos-ppmu: new PPMU device registered %s (%s)\n",
			FUNC4(&pdev->dev), desc[i].name);
	}

	ret = FUNC2(info->ppmu.clk);
	if (ret) {
		FUNC3(&pdev->dev, "failed to prepare ppmu clock\n");
		return ret;
	}

	return 0;
}