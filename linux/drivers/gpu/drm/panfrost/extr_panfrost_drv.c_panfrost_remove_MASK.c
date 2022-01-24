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
struct panfrost_device {int /*<<< orphan*/  dev; struct drm_device* ddev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct panfrost_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct panfrost_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct panfrost_device *pfdev = FUNC5(pdev);
	struct drm_device *ddev = pfdev->ddev;

	FUNC1(ddev);
	FUNC4(ddev);

	FUNC7(pfdev->dev);
	FUNC2(pfdev);
	FUNC3(pfdev);
	FUNC8(pfdev->dev);
	FUNC6(pfdev->dev);

	FUNC0(ddev);
	return 0;
}