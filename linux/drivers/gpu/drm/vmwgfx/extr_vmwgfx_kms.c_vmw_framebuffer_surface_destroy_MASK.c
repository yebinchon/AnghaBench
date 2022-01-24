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
struct TYPE_2__ {scalar_t__ user_obj; } ;
struct vmw_framebuffer_surface {TYPE_1__ base; int /*<<< orphan*/  surface; } ;
struct drm_framebuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_framebuffer_surface*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 struct vmw_framebuffer_surface* FUNC3 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_framebuffer *framebuffer)
{
	struct vmw_framebuffer_surface *vfbs =
		FUNC3(framebuffer);

	FUNC0(framebuffer);
	FUNC4(&vfbs->surface);
	if (vfbs->base.user_obj)
		FUNC2(&vfbs->base.user_obj);

	FUNC1(vfbs);
}