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
struct drm_plane_state {int dummy; } ;
struct vkms_plane_state {struct drm_plane_state base; struct vkms_composer* composer; } ;
struct vkms_composer {int dummy; } ;
struct drm_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct vkms_plane_state*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane_state *
FUNC4(struct drm_plane *plane)
{
	struct vkms_plane_state *vkms_state;
	struct vkms_composer *composer;

	vkms_state = FUNC3(sizeof(*vkms_state), GFP_KERNEL);
	if (!vkms_state)
		return NULL;

	composer = FUNC3(sizeof(*composer), GFP_KERNEL);
	if (!composer) {
		FUNC0("Couldn't allocate composer\n");
		FUNC2(vkms_state);
		return NULL;
	}

	vkms_state->composer = composer;

	FUNC1(plane,
						  &vkms_state->base);

	return &vkms_state->base;
}