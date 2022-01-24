#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int irq_enabled; struct komeda_dev* dev_private; TYPE_1__* driver; int /*<<< orphan*/  dev; } ;
struct komeda_kms_dev {int /*<<< orphan*/  n_crtcs; struct drm_device base; } ;
struct komeda_dev {int /*<<< orphan*/  dev; TYPE_2__* funcs; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int (* enable_irq ) (struct komeda_dev*) ;int /*<<< orphan*/  (* disable_irq ) (struct komeda_dev*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct komeda_kms_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int FUNC1 (int /*<<< orphan*/ ,struct komeda_kms_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct drm_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_device*) ; 
 int FUNC4 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int FUNC11 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct komeda_kms_dev*) ; 
 int FUNC13 (struct komeda_kms_dev*,struct komeda_dev*) ; 
 int FUNC14 (struct komeda_kms_dev*,struct komeda_dev*) ; 
 int FUNC15 (struct komeda_kms_dev*,struct komeda_dev*) ; 
 int FUNC16 (struct komeda_kms_dev*,struct komeda_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct komeda_kms_dev*) ; 
 int /*<<< orphan*/  komeda_kms_driver ; 
 int /*<<< orphan*/  komeda_kms_irq_handler ; 
 int /*<<< orphan*/  FUNC18 (struct komeda_kms_dev*,struct komeda_dev*) ; 
 struct komeda_kms_dev* FUNC19 (int,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct komeda_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct komeda_dev*) ; 

struct komeda_kms_dev *FUNC22(struct komeda_dev *mdev)
{
	struct komeda_kms_dev *kms = FUNC19(sizeof(*kms), GFP_KERNEL);
	struct drm_device *drm;
	int err;

	if (!kms)
		return FUNC0(-ENOMEM);

	drm = &kms->base;
	err = FUNC4(drm, &komeda_kms_driver, mdev->dev);
	if (err)
		goto free_kms;

	drm->dev_private = mdev;

	FUNC18(kms, mdev);

	err = FUNC15(kms, mdev);
	if (err)
		goto cleanup_mode_config;

	err = FUNC14(kms, mdev);
	if (err)
		goto cleanup_mode_config;

	err = FUNC11(drm, kms->n_crtcs);
	if (err)
		goto cleanup_mode_config;

	err = FUNC13(kms, mdev);
	if (err)
		goto cleanup_mode_config;

	err = FUNC16(kms, mdev);
	if (err)
		goto cleanup_mode_config;

	err = FUNC1(mdev->dev, kms);
	if (err)
		goto cleanup_mode_config;

	FUNC10(drm);

	err = FUNC3(drm->dev, mdev->irq,
			       komeda_kms_irq_handler, IRQF_SHARED,
			       drm->driver->name, drm);
	if (err)
		goto free_component_binding;

	err = mdev->funcs->enable_irq(mdev);
	if (err)
		goto free_component_binding;

	drm->irq_enabled = true;

	FUNC8(drm);

	err = FUNC6(drm, 0);
	if (err)
		goto free_interrupts;

	return kms;

free_interrupts:
	FUNC7(drm);
	drm->irq_enabled = false;
	mdev->funcs->disable_irq(mdev);
free_component_binding:
	FUNC2(mdev->dev, drm);
cleanup_mode_config:
	FUNC9(drm);
	FUNC17(kms);
	drm->dev_private = NULL;
	FUNC5(drm);
free_kms:
	FUNC12(kms);
	return FUNC0(err);
}