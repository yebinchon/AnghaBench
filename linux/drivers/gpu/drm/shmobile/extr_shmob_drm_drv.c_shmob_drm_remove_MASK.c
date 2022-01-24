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
struct shmob_drm_device {struct drm_device* ddev; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct shmob_drm_device* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct shmob_drm_device *sdev = FUNC5(pdev);
	struct drm_device *ddev = sdev->ddev;

	FUNC1(ddev);
	FUNC3(ddev);
	FUNC4(ddev);
	FUNC2(ddev);
	FUNC0(ddev);

	return 0;
}