#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_6__ {TYPE_3__** crtcs; int /*<<< orphan*/  mode_config_initialized; } ;
struct radeon_device {int num_crtc; TYPE_2__ mode_info; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_5__ {struct drm_display_mode mode; scalar_t__ enabled; } ;
struct TYPE_7__ {TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*,TYPE_3__*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 

void FUNC3(struct radeon_device *rdev)
{
	struct drm_display_mode *mode = NULL;
	u32 num_heads = 0, lb_size;
	int i;

	if (!rdev->mode_info.mode_config_initialized)
		return;

	FUNC2(rdev);

	for (i = 0; i < rdev->num_crtc; i++) {
		if (rdev->mode_info.crtcs[i]->base.enabled)
			num_heads++;
	}
	for (i = 0; i < rdev->num_crtc; i++) {
		mode = &rdev->mode_info.crtcs[i]->base.mode;
		lb_size = FUNC0(rdev, rdev->mode_info.crtcs[i], mode);
		FUNC1(rdev, rdev->mode_info.crtcs[i], lb_size, num_heads);
	}
}