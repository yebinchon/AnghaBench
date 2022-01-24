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
struct dss_device {struct platform_device* drm_pdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 struct dss_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dss_device*) ; 
 struct platform_device* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct dss_device *dss = FUNC4(dev);
	struct platform_device *drm_pdev;
	int r;

	r = FUNC2(dev, NULL);
	if (r)
		return r;

	FUNC7(0);

	FUNC5(dss);

	drm_pdev = FUNC6("omapdrm", 0, NULL, 0);
	if (FUNC0(drm_pdev)) {
		FUNC3(dev, NULL);
		return FUNC1(drm_pdev);
	}

	dss->drm_pdev = drm_pdev;

	return 0;
}