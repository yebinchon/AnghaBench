#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * timings; int /*<<< orphan*/ * funcs; int /*<<< orphan*/  of_node; struct thc63_dev* driver_private; } ;
struct thc63_dev {TYPE_1__ bridge; int /*<<< orphan*/  timings; int /*<<< orphan*/  vcc; TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 struct thc63_dev* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct thc63_dev*) ; 
 int /*<<< orphan*/  thc63_bridge_func ; 
 int FUNC7 (struct thc63_dev*) ; 
 int FUNC8 (struct thc63_dev*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct thc63_dev *thc63;
	int ret;

	thc63 = FUNC3(&pdev->dev, sizeof(*thc63), GFP_KERNEL);
	if (!thc63)
		return -ENOMEM;

	thc63->dev = &pdev->dev;
	FUNC6(pdev, thc63);

	thc63->vcc = FUNC4(thc63->dev, "vcc");
	if (FUNC0(thc63->vcc)) {
		if (FUNC1(thc63->vcc) == -EPROBE_DEFER)
			return -EPROBE_DEFER;

		FUNC2(thc63->dev, "Unable to get \"vcc\" supply: %ld\n",
			FUNC1(thc63->vcc));
		return FUNC1(thc63->vcc);
	}

	ret = FUNC7(thc63);
	if (ret)
		return ret;

	ret = FUNC8(thc63);
	if (ret)
		return ret;

	thc63->bridge.driver_private = thc63;
	thc63->bridge.of_node = pdev->dev.of_node;
	thc63->bridge.funcs = &thc63_bridge_func;
	thc63->bridge.timings = &thc63->timings;

	FUNC5(&thc63->bridge);

	return 0;
}