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
struct drm_crtc_state {int dummy; } ;
struct vkms_crtc_state {struct drm_crtc_state base; int /*<<< orphan*/  composer_work; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,struct drm_crtc_state*) ; 
 struct vkms_crtc_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vkms_composer_worker ; 

__attribute__((used)) static struct drm_crtc_state *
FUNC4(struct drm_crtc *crtc)
{
	struct vkms_crtc_state *vkms_state;

	if (FUNC1(!crtc->state))
		return NULL;

	vkms_state = FUNC3(sizeof(*vkms_state), GFP_KERNEL);
	if (!vkms_state)
		return NULL;

	FUNC2(crtc, &vkms_state->base);

	FUNC0(&vkms_state->composer_work, vkms_composer_worker);

	return &vkms_state->base;
}