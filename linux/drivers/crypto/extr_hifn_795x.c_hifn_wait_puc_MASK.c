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
struct hifn_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_0_PUCTRL ; 
 int HIFN_PUCTRL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hifn_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct hifn_device *dev)
{
	int i;
	u32 ret;

	for (i = 10000; i > 0; --i) {
		ret = FUNC1(dev, HIFN_0_PUCTRL);
		if (!(ret & HIFN_PUCTRL_RESET))
			break;

		FUNC2(1);
	}

	if (!i)
		FUNC0(&dev->pdev->dev, "Failed to reset PUC unit.\n");
}