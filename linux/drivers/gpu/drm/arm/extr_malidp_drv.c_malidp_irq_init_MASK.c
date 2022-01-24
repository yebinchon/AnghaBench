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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct malidp_hw_device {int dummy; } ;
struct malidp_drm {struct malidp_hw_device* dev; } ;
struct drm_device {struct malidp_drm* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct drm_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct malidp_hw_device*) ; 
 int FUNC3 (struct drm_device*,int) ; 
 int FUNC4 (struct drm_device*,int) ; 
 int FUNC5 (struct platform_device*,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int irq_de, irq_se, ret = 0;
	struct drm_device *drm = FUNC1(&pdev->dev);
	struct malidp_drm *malidp = drm->dev_private;
	struct malidp_hw_device *hwdev = malidp->dev;

	/* fetch the interrupts from DT */
	irq_de = FUNC5(pdev, "DE");
	if (irq_de < 0) {
		FUNC0("no 'DE' IRQ specified!\n");
		return irq_de;
	}
	irq_se = FUNC5(pdev, "SE");
	if (irq_se < 0) {
		FUNC0("no 'SE' IRQ specified!\n");
		return irq_se;
	}

	ret = FUNC3(drm, irq_de);
	if (ret)
		return ret;

	ret = FUNC4(drm, irq_se);
	if (ret) {
		FUNC2(hwdev);
		return ret;
	}

	return 0;
}