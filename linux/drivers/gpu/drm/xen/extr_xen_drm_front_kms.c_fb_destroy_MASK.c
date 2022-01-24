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
struct xen_drm_front_drm_info {int /*<<< orphan*/  front_info; } ;
struct drm_framebuffer {TYPE_1__* dev; } ;
struct TYPE_2__ {struct xen_drm_front_drm_info* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_framebuffer*) ; 

__attribute__((used)) static void FUNC5(struct drm_framebuffer *fb)
{
	struct xen_drm_front_drm_info *drm_info = fb->dev->dev_private;
	int idx;

	if (FUNC0(fb->dev, &idx)) {
		FUNC3(drm_info->front_info,
					FUNC4(fb));
		FUNC1(idx);
	}
	FUNC2(fb);
}