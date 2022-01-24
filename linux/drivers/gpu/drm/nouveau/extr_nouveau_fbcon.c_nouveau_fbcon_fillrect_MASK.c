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
struct TYPE_5__ {scalar_t__ family; } ;
struct nvif_device {TYPE_2__ info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct nouveau_fbdev {TYPE_1__ helper; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; struct nvif_device device; } ;
struct nouveau_drm {TYPE_3__ client; } ;
struct fb_info {scalar_t__ state; int flags; struct nouveau_fbdev* par; } ;
struct fb_fillrect {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FBINFO_HWACCEL_DISABLED ; 
 scalar_t__ FBINFO_STATE_RUNNING ; 
 scalar_t__ NV_DEVICE_INFO_V0_FERMI ; 
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,struct fb_fillrect const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int FUNC6 (struct fb_info*,struct fb_fillrect const*) ; 
 int FUNC7 (struct fb_info*,struct fb_fillrect const*) ; 
 int FUNC8 (struct fb_info*,struct fb_fillrect const*) ; 

__attribute__((used)) static void
FUNC9(struct fb_info *info, const struct fb_fillrect *rect)
{
	struct nouveau_fbdev *fbcon = info->par;
	struct nouveau_drm *drm = FUNC4(fbcon->helper.dev);
	struct nvif_device *device = &drm->client.device;
	int ret;

	if (info->state != FBINFO_STATE_RUNNING)
		return;

	ret = -ENODEV;
	if (!FUNC1() && !(info->flags & FBINFO_HWACCEL_DISABLED) &&
	    FUNC2(&drm->client.mutex)) {
		if (device->info.family < NV_DEVICE_INFO_V0_TESLA)
			ret = FUNC6(info, rect);
		else
		if (device->info.family < NV_DEVICE_INFO_V0_FERMI)
			ret = FUNC7(info, rect);
		else
			ret = FUNC8(info, rect);
		FUNC3(&drm->client.mutex);
	}

	if (ret == 0)
		return;

	if (ret != -ENODEV)
		FUNC5(info);
	FUNC0(info, rect);
}