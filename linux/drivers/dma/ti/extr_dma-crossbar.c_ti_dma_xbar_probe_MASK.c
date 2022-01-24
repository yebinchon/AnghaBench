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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
#define  TI_XBAR_AM335X 129 
#define  TI_XBAR_DRA7 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  ti_dma_xbar_match ; 
 int FUNC3 (struct platform_device*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	const struct of_device_id *match;
	int ret;

	match = FUNC1(ti_dma_xbar_match, pdev->dev.of_node);
	if (FUNC4(!match))
		return -EINVAL;

	switch (*(u32 *)match->data) {
	case TI_XBAR_DRA7:
		ret = FUNC3(pdev);
		break;
	case TI_XBAR_AM335X:
		ret = FUNC2(pdev);
		break;
	default:
		FUNC0(&pdev->dev, "Unsupported crossbar\n");
		ret = -ENODEV;
		break;
	}

	return ret;
}