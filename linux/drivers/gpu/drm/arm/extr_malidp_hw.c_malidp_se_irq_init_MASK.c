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
struct malidp_hw_device {int /*<<< orphan*/  mw_state; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct malidp_drm* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MALIDP_SE_BLOCK ; 
 int /*<<< orphan*/  MW_NOT_ENABLED ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct malidp_hw_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct malidp_hw_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  malidp_se_irq ; 
 int /*<<< orphan*/  FUNC4 (struct malidp_hw_device*) ; 
 int /*<<< orphan*/  malidp_se_irq_thread_handler ; 

int FUNC5(struct drm_device *drm, int irq)
{
	struct malidp_drm *malidp = drm->dev_private;
	struct malidp_hw_device *hwdev = malidp->dev;
	int ret;

	/* ensure interrupts are disabled */
	FUNC3(hwdev, MALIDP_SE_BLOCK, 0xffffffff);
	FUNC2(hwdev, MALIDP_SE_BLOCK, 0xffffffff);

	ret = FUNC1(drm->dev, irq, malidp_se_irq,
					malidp_se_irq_thread_handler,
					IRQF_SHARED, "malidp-se", drm);
	if (ret < 0) {
		FUNC0("failed to install SE IRQ handler\n");
		return ret;
	}

	hwdev->mw_state = MW_NOT_ENABLED;
	FUNC4(hwdev);

	return 0;
}