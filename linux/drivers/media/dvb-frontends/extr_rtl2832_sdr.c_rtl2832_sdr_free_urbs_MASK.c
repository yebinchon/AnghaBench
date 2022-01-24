#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rtl2832_sdr_dev {int urbs_initialized; scalar_t__* urb_list; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl2832_sdr_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct rtl2832_sdr_dev *dev)
{
	struct platform_device *pdev = dev->pdev;
	int i;

	FUNC1(dev);

	for (i = dev->urbs_initialized - 1; i >= 0; i--) {
		if (dev->urb_list[i]) {
			FUNC0(&pdev->dev, "free urb=%d\n", i);
			/* free the URBs */
			FUNC2(dev->urb_list[i]);
		}
	}
	dev->urbs_initialized = 0;

	return 0;
}