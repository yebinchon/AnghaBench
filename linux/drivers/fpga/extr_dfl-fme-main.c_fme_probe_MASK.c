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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  fme_feature_drvs ; 
 int /*<<< orphan*/  fme_fops ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int ret;

	ret = FUNC4(pdev);
	if (ret)
		goto exit;

	ret = FUNC0(pdev, fme_feature_drvs);
	if (ret)
		goto dev_destroy;

	ret = FUNC2(pdev, &fme_fops, THIS_MODULE);
	if (ret)
		goto feature_uinit;

	return 0;

feature_uinit:
	FUNC1(pdev);
dev_destroy:
	FUNC3(pdev);
exit:
	return ret;
}