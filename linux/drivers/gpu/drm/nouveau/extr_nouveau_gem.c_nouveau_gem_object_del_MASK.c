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
struct nouveau_drm {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  sg; int /*<<< orphan*/  bdev; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct drm_gem_object {scalar_t__ import_attach; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC3 (struct drm_gem_object*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void
FUNC8(struct drm_gem_object *gem)
{
	struct nouveau_bo *nvbo = FUNC3(gem);
	struct nouveau_drm *drm = FUNC2(nvbo->bo.bdev);
	struct device *dev = drm->dev->dev;
	int ret;

	ret = FUNC4(dev);
	if (FUNC0(ret < 0 && ret != -EACCES))
		return;

	if (gem->import_attach)
		FUNC1(gem, nvbo->bo.sg);

	FUNC7(&nvbo->bo);

	FUNC5(dev);
	FUNC6(dev);
}