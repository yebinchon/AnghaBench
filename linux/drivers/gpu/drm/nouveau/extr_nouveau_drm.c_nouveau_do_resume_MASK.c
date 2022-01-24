#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
struct nouveau_drm {scalar_t__ fence; TYPE_2__ master; } ;
struct TYPE_4__ {scalar_t__ num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* resume ) (struct nouveau_drm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_drm*) ; 
 struct nouveau_drm* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_drm*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_drm*) ; 

__attribute__((used)) static int
FUNC12(struct drm_device *dev, bool runtime)
{
	int ret = 0;
	struct nouveau_drm *drm = FUNC4(dev);

	FUNC0(drm, "resuming object tree...\n");
	ret = FUNC10(&drm->master.base);
	if (ret) {
		FUNC1(drm, "Client resume failed with error: %d\n", ret);
		return ret;
	}

	FUNC0(drm, "resuming fence...\n");
	if (drm->fence && FUNC6(drm)->resume)
		FUNC6(drm)->resume(drm);

	FUNC8(dev);

	if (dev->mode_config.num_crtc) {
		FUNC0(drm, "resuming display...\n");
		FUNC2(dev, runtime);
		FUNC0(drm, "resuming console...\n");
		FUNC5(dev, 0);
	}

	FUNC7(dev);
	FUNC3(drm);
	FUNC9(drm);
	return 0;
}