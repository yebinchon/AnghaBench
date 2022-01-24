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
struct device {int /*<<< orphan*/  platform_data; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipu_crtc_ops ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret;

	if (!dev->platform_data)
		return -EINVAL;

	ret = FUNC2(dev, FUNC0(32));
	if (ret)
		return ret;

	return FUNC1(dev, &ipu_crtc_ops);
}