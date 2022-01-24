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
struct nouveau_drm {int /*<<< orphan*/  master; int /*<<< orphan*/  client; } ;
struct TYPE_2__ {scalar_t__ num_crtc; } ;
struct drm_device {TYPE_1__ mode_config; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_drm*) ; 
 struct nouveau_drm* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC14 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC15 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC8(dev);

	if (FUNC12()) {
		FUNC17(dev->dev);
		FUNC16(dev->dev);
	}

	FUNC11(dev);
	FUNC9(dev);
	FUNC7(drm);
	FUNC13(drm);
	FUNC10(dev);
	FUNC4(drm);

	if (dev->mode_config.num_crtc)
		FUNC6(dev, false, false);
	FUNC5(dev);

	FUNC1(drm);
	FUNC2(dev);

	FUNC14(drm);
	FUNC15(drm);

	FUNC3(&drm->client);
	FUNC3(&drm->master);
	FUNC0(drm);
}