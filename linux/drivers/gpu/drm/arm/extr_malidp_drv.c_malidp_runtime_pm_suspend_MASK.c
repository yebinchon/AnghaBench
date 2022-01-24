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
struct malidp_hw_device {int pm_suspended; int /*<<< orphan*/  pclk; int /*<<< orphan*/  aclk; int /*<<< orphan*/  mclk; TYPE_1__* hw; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* in_config_mode ) (struct malidp_hw_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct malidp_hw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct malidp_hw_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct malidp_hw_device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct drm_device *drm = FUNC2(dev);
	struct malidp_drm *malidp = drm->dev_private;
	struct malidp_hw_device *hwdev = malidp->dev;

	/* we can only suspend if the hardware is in config mode */
	FUNC0(!hwdev->hw->in_config_mode(hwdev));

	FUNC4(hwdev);
	FUNC3(hwdev);
	hwdev->pm_suspended = true;
	FUNC1(hwdev->mclk);
	FUNC1(hwdev->aclk);
	FUNC1(hwdev->pclk);

	return 0;
}