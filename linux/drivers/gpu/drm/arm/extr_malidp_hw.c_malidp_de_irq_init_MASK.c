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
struct malidp_hw_device {int dummy; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; struct malidp_drm* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MALIDP_DC_BLOCK ; 
 int /*<<< orphan*/  MALIDP_DE_BLOCK ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct drm_device*) ; 
 int /*<<< orphan*/  malidp_de_irq ; 
 int /*<<< orphan*/  FUNC2 (struct malidp_hw_device*) ; 
 int /*<<< orphan*/  malidp_de_irq_thread_handler ; 
 int /*<<< orphan*/  FUNC3 (struct malidp_hw_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct malidp_hw_device*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct drm_device *drm, int irq)
{
	struct malidp_drm *malidp = drm->dev_private;
	struct malidp_hw_device *hwdev = malidp->dev;
	int ret;

	/* ensure interrupts are disabled */
	FUNC4(hwdev, MALIDP_DE_BLOCK, 0xffffffff);
	FUNC3(hwdev, MALIDP_DE_BLOCK, 0xffffffff);
	FUNC4(hwdev, MALIDP_DC_BLOCK, 0xffffffff);
	FUNC3(hwdev, MALIDP_DC_BLOCK, 0xffffffff);

	ret = FUNC1(drm->dev, irq, malidp_de_irq,
					malidp_de_irq_thread_handler,
					IRQF_SHARED, "malidp-de", drm);
	if (ret < 0) {
		FUNC0("failed to install DE IRQ handler\n");
		return ret;
	}

	FUNC2(hwdev);

	return 0;
}