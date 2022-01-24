#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vbox_framebuffer {scalar_t__ obj; } ;
struct drm_framebuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_framebuffer*) ; 
 struct vbox_framebuffer* FUNC3 (struct drm_framebuffer*) ; 

__attribute__((used)) static void FUNC4(struct drm_framebuffer *fb)
{
	struct vbox_framebuffer *vbox_fb = FUNC3(fb);

	if (vbox_fb->obj)
		FUNC1(vbox_fb->obj);

	FUNC0(fb);
	FUNC2(fb);
}