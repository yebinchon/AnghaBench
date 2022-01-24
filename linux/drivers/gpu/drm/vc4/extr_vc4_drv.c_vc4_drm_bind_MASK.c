#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vc4_dev {int /*<<< orphan*/  bin_bo_lock; int /*<<< orphan*/  debugfs_list; struct drm_device* dev; } ;
struct platform_device {int dummy; } ;
struct drm_device {struct vc4_dev* dev_private; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  coherent_dma_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  driver_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_RENDER ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*) ; 
 int FUNC4 (struct device*,struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct drm_device*) ; 
 struct vc4_dev* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct drm_device* FUNC7 (TYPE_1__*,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int FUNC9 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 struct device_node* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct drm_device*) ; 
 struct platform_device* FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*) ; 
 int FUNC20 (struct drm_device*) ; 
 TYPE_1__ vc4_drm_driver ; 
 int /*<<< orphan*/  FUNC21 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct drm_device*) ; 
 int FUNC23 (struct drm_device*) ; 
 int /*<<< orphan*/  vc4_v3d_dt_match ; 

__attribute__((used)) static int FUNC24(struct device *dev)
{
	struct platform_device *pdev = FUNC18(dev);
	struct drm_device *drm;
	struct vc4_dev *vc4;
	struct device_node *node;
	int ret = 0;

	dev->coherent_dma_mask = FUNC0(32);

	vc4 = FUNC6(dev, sizeof(*vc4), GFP_KERNEL);
	if (!vc4)
		return -ENOMEM;

	/* If VC4 V3D is missing, don't advertise render nodes. */
	node = FUNC15(NULL, vc4_v3d_dt_match, NULL);
	if (!node || !FUNC14(node))
		vc4_drm_driver.driver_features &= ~DRIVER_RENDER;
	FUNC16(node);

	drm = FUNC7(&vc4_drm_driver, dev);
	if (FUNC2(drm))
		return FUNC3(drm);
	FUNC17(pdev, drm);
	vc4->dev = drm;
	drm->dev_private = vc4;
	FUNC1(&vc4->debugfs_list);

	FUNC13(&vc4->bin_bo_lock);

	ret = FUNC20(drm);
	if (ret)
		goto dev_put;

	FUNC12(drm);

	FUNC22(drm);

	ret = FUNC4(dev, drm);
	if (ret)
		goto gem_destroy;

	FUNC10(NULL, "vc4drmfb", false);

	ret = FUNC23(drm);
	if (ret < 0)
		goto unbind_all;

	ret = FUNC9(drm, 0);
	if (ret < 0)
		goto unbind_all;

	FUNC11(drm, 16);

	return 0;

unbind_all:
	FUNC5(dev, drm);
gem_destroy:
	FUNC21(drm);
	FUNC19(drm);
dev_put:
	FUNC8(drm);
	return ret;
}