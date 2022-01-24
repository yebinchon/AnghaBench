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
struct nouveau_framebuffer {int /*<<< orphan*/  nvbo; } ;
struct nouveau_drm {int dummy; } ;
struct drm_plane_state {int /*<<< orphan*/  fb; } ;
struct drm_plane {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nouveau_framebuffer* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct drm_plane *plane, struct drm_plane_state *old_state)
{
	struct nouveau_framebuffer *fb = FUNC3(old_state->fb);
	struct nouveau_drm *drm = FUNC2(plane->dev);

	FUNC0(drm, "%s cleanup: %p\n", plane->name, old_state->fb);
	if (!old_state->fb)
		return;

	FUNC1(fb->nvbo);
}