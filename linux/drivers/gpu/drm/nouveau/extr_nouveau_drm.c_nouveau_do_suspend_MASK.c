#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  base; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;
struct nouveau_drm {scalar_t__ fence; TYPE_2__ master; scalar_t__ channel; scalar_t__ cechan; TYPE_1__ ttm; } ;
struct TYPE_7__ {scalar_t__ num_crtc; } ;
struct drm_device {TYPE_3__ mode_config; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* resume ) (struct nouveau_drm*) ;int /*<<< orphan*/  (* suspend ) (struct nouveau_drm*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int) ; 
 int FUNC3 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_drm*) ; 
 struct nouveau_drm* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int) ; 
 TYPE_4__* FUNC7 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_drm*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC12 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct drm_device *dev, bool runtime)
{
	struct nouveau_drm *drm = FUNC5(dev);
	int ret;

	FUNC9(drm);
	FUNC4(drm);
	FUNC8(dev);

	if (dev->mode_config.num_crtc) {
		FUNC0(drm, "suspending console...\n");
		FUNC6(dev, 1);
		FUNC0(drm, "suspending display...\n");
		ret = FUNC3(dev, runtime);
		if (ret)
			return ret;
	}

	FUNC0(drm, "evicting buffers...\n");
	FUNC13(&drm->ttm.bdev, TTM_PL_VRAM);

	FUNC0(drm, "waiting for kernel channels to go idle...\n");
	if (drm->cechan) {
		ret = FUNC1(drm->cechan);
		if (ret)
			goto fail_display;
	}

	if (drm->channel) {
		ret = FUNC1(drm->channel);
		if (ret)
			goto fail_display;
	}

	FUNC0(drm, "suspending fence...\n");
	if (drm->fence && FUNC7(drm)->suspend) {
		if (!FUNC7(drm)->suspend(drm)) {
			ret = -ENOMEM;
			goto fail_display;
		}
	}

	FUNC0(drm, "suspending object tree...\n");
	ret = FUNC10(&drm->master.base);
	if (ret)
		goto fail_client;

	return 0;

fail_client:
	if (drm->fence && FUNC7(drm)->resume)
		FUNC7(drm)->resume(drm);

fail_display:
	if (dev->mode_config.num_crtc) {
		FUNC0(drm, "resuming display...\n");
		FUNC2(dev, runtime);
	}
	return ret;
}