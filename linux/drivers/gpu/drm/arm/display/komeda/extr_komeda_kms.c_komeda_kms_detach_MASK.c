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
struct drm_device {int irq_enabled; struct komeda_dev* dev_private; } ;
struct komeda_kms_dev {struct drm_device base; } ;
struct komeda_dev {int /*<<< orphan*/  dev; TYPE_1__* funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_irq ) (struct komeda_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct komeda_kms_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct komeda_dev*) ; 

void FUNC8(struct komeda_kms_dev *kms)
{
	struct drm_device *drm = &kms->base;
	struct komeda_dev *mdev = drm->dev_private;

	FUNC3(drm);
	FUNC4(drm);
	FUNC1(drm);
	drm->irq_enabled = false;
	mdev->funcs->disable_irq(mdev);
	FUNC0(mdev->dev, drm);
	FUNC5(drm);
	FUNC6(kms);
	drm->dev_private = NULL;
	FUNC2(drm);
}