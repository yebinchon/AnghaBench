#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  base; } ;
struct TYPE_5__ {void* brightness; void* colorkey; } ;
struct nouveau_plane {int colorkey; int brightness; TYPE_2__ base; TYPE_1__ props; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct drm_device*,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC5 (struct drm_device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  formats ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_plane*) ; 
 struct nouveau_plane* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  nv04_plane_funcs ; 

__attribute__((used)) static void
FUNC9(struct drm_device *device)
{
	struct nouveau_drm *drm = FUNC8(device);
	struct nouveau_plane *plane = FUNC7(sizeof(struct nouveau_plane), GFP_KERNEL);
	int ret;

	if (!plane)
		return;

	ret = FUNC4(device, &plane->base, 1 /* single crtc */,
			     &nv04_plane_funcs,
			     formats, 2, false);
	if (ret)
		goto err;

	/* Set up the plane properties */
	plane->props.colorkey = FUNC5(
			device, 0, "colorkey", 0, 0x01ffffff);
	plane->props.brightness = FUNC5(
			device, 0, "brightness", 0, 1024);
	if (!plane->props.colorkey ||
	    !plane->props.brightness)
		goto cleanup;

	plane->colorkey = 0;
	FUNC1(&plane->base.base,
				   plane->props.colorkey, plane->colorkey);

	plane->brightness = 512;
	FUNC1(&plane->base.base,
				   plane->props.brightness, plane->brightness);

	FUNC3(&plane->base);
	return;
cleanup:
	FUNC2(&plane->base);
err:
	FUNC6(plane);
	FUNC0(drm, "Failed to create plane\n");
}