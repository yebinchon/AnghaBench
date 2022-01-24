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
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct nouveau_fbdev {int /*<<< orphan*/  surf2d; int /*<<< orphan*/  clip; int /*<<< orphan*/  rop; int /*<<< orphan*/  patt; int /*<<< orphan*/  gdi; int /*<<< orphan*/  blit; int /*<<< orphan*/  twod; TYPE_2__ helper; } ;
struct nouveau_drm {scalar_t__ channel; struct nouveau_fbdev* fbcon; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBINFO_HWACCEL_DISABLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct nouveau_drm* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC3(dev);
	struct nouveau_fbdev *fbcon = drm->fbcon;
	if (fbcon && drm->channel) {
		FUNC0();
		if (fbcon->helper.fbdev)
			fbcon->helper.fbdev->flags |= FBINFO_HWACCEL_DISABLED;
		FUNC1();
		FUNC2(drm->channel);
		FUNC4(&fbcon->twod);
		FUNC4(&fbcon->blit);
		FUNC4(&fbcon->gdi);
		FUNC4(&fbcon->patt);
		FUNC4(&fbcon->rop);
		FUNC4(&fbcon->clip);
		FUNC4(&fbcon->surf2d);
	}
}