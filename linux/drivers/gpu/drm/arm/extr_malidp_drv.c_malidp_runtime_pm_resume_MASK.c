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
struct malidp_hw_device {int pm_suspended; int /*<<< orphan*/  mclk; int /*<<< orphan*/  aclk; int /*<<< orphan*/  pclk; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct malidp_hw_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct malidp_hw_device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct drm_device *drm = FUNC1(dev);
	struct malidp_drm *malidp = drm->dev_private;
	struct malidp_hw_device *hwdev = malidp->dev;

	FUNC0(hwdev->pclk);
	FUNC0(hwdev->aclk);
	FUNC0(hwdev->mclk);
	hwdev->pm_suspended = false;
	FUNC2(hwdev);
	FUNC3(hwdev);

	return 0;
}