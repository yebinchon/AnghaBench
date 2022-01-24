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
struct drm_rect {int dummy; } ;
struct drm_framebuffer {int /*<<< orphan*/ * obj; TYPE_2__* format; TYPE_1__* dev; } ;
struct cirrus_device {int cpp; int /*<<< orphan*/  pitch; int /*<<< orphan*/  vram; } ;
struct TYPE_4__ {int* cpp; } ;
struct TYPE_3__ {struct cirrus_device* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,struct drm_framebuffer*,struct drm_rect*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct drm_framebuffer*,struct drm_rect*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct drm_framebuffer*,struct drm_rect*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC6(struct drm_framebuffer *fb,
			       struct drm_rect *rect)
{
	struct cirrus_device *cirrus = fb->dev->dev_private;
	void *vmap;

	vmap = FUNC4(fb->obj[0]);
	if (!vmap)
		return -ENOMEM;

	if (cirrus->cpp == fb->format->cpp[0])
		FUNC1(cirrus->vram,
				      vmap, fb, rect);

	else if (fb->format->cpp[0] == 4 && cirrus->cpp == 2)
		FUNC2(cirrus->vram,
						  cirrus->pitch,
						  vmap, fb, rect, false);

	else if (fb->format->cpp[0] == 4 && cirrus->cpp == 3)
		FUNC3(cirrus->vram,
						  cirrus->pitch,
						  vmap, fb, rect);

	else
		FUNC0("cpp mismatch");

	FUNC5(fb->obj[0], vmap);
	return 0;
}