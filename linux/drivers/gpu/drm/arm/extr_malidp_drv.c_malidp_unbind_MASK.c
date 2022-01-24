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
struct malidp_hw_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * port; } ;
struct malidp_drm {TYPE_1__ crtc; struct malidp_hw_device* dev; } ;
struct drm_device {int irq_enabled; struct malidp_drm* dev_private; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct drm_device*) ; 
 struct drm_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct malidp_hw_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct malidp_hw_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 scalar_t__ FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 

__attribute__((used)) static void FUNC19(struct device *dev)
{
	struct drm_device *drm = FUNC1(dev);
	struct malidp_drm *malidp = drm->dev_private;
	struct malidp_hw_device *hwdev = malidp->dev;

	FUNC6(drm);
	FUNC7(drm);
	FUNC17(dev);
	FUNC4(&malidp->crtc);
	FUNC12(hwdev);
	FUNC8(hwdev);
	drm->irq_enabled = false;
	FUNC3(drm);
	FUNC0(dev, drm);
	FUNC13(malidp->crtc.port);
	malidp->crtc.port = NULL;
	FUNC10(dev);
	FUNC9(drm);
	FUNC18(dev);
	if (FUNC16(dev))
		FUNC15(dev);
	else
		FUNC11(dev);
	drm->dev_private = NULL;
	FUNC2(dev, NULL);
	FUNC5(drm);
	FUNC14(dev);
}