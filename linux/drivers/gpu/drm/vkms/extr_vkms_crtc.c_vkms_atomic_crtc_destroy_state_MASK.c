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
struct vkms_crtc_state {struct vkms_crtc_state* active_planes; int /*<<< orphan*/  composer_work; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct vkms_crtc_state*) ; 
 struct vkms_crtc_state* FUNC3 (struct drm_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc,
					   struct drm_crtc_state *state)
{
	struct vkms_crtc_state *vkms_state = FUNC3(state);

	FUNC1(state);

	FUNC0(FUNC4(&vkms_state->composer_work));
	FUNC2(vkms_state->active_planes);
	FUNC2(vkms_state);
}