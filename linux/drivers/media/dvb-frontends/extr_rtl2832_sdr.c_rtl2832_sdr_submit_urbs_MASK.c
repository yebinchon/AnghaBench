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
struct rtl2832_sdr_dev {int urbs_initialized; int /*<<< orphan*/  urbs_submitted; int /*<<< orphan*/ * urb_list; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl2832_sdr_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rtl2832_sdr_dev *dev)
{
	struct platform_device *pdev = dev->pdev;
	int i, ret;

	for (i = 0; i < dev->urbs_initialized; i++) {
		FUNC0(&pdev->dev, "submit urb=%d\n", i);
		ret = FUNC3(dev->urb_list[i], GFP_KERNEL);
		if (ret) {
			FUNC1(&pdev->dev,
				"Could not submit urb no. %d - get them all back\n",
				i);
			FUNC2(dev);
			return ret;
		}
		dev->urbs_submitted++;
	}

	return 0;
}