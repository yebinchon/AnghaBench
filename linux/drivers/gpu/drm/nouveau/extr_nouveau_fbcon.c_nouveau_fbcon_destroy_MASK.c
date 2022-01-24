#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nouveau_framebuffer {int /*<<< orphan*/  base; scalar_t__ nvbo; int /*<<< orphan*/  vma; } ;
struct TYPE_3__ {int /*<<< orphan*/  fb; } ;
struct nouveau_fbdev {TYPE_1__ helper; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct nouveau_framebuffer* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct drm_device *dev, struct nouveau_fbdev *fbcon)
{
	struct nouveau_framebuffer *nouveau_fb = FUNC5(fbcon->helper.fb);

	FUNC1(&fbcon->helper);
	FUNC0(&fbcon->helper);

	if (nouveau_fb && nouveau_fb->nvbo) {
		FUNC6(&nouveau_fb->vma);
		FUNC3(nouveau_fb->nvbo);
		FUNC4(nouveau_fb->nvbo);
		FUNC2(&nouveau_fb->base);
	}

	return 0;
}