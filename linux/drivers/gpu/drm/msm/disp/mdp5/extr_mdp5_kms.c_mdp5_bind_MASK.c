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
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int FUNC2 (struct platform_device*,struct drm_device*) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device *master, void *data)
{
	struct drm_device *ddev = FUNC1(master);
	struct platform_device *pdev = FUNC3(dev);

	FUNC0("");

	return FUNC2(pdev, ddev);
}