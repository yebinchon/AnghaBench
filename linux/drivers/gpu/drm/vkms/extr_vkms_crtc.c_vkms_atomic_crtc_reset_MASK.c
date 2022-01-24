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
struct vkms_crtc_state {int /*<<< orphan*/  composer_work; int /*<<< orphan*/  base; } ;
struct drm_crtc {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 struct vkms_crtc_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*,scalar_t__) ; 
 int /*<<< orphan*/  vkms_composer_worker ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct vkms_crtc_state *vkms_state =
		FUNC2(sizeof(*vkms_state), GFP_KERNEL);

	if (crtc->state)
		FUNC3(crtc, crtc->state);

	FUNC1(crtc, &vkms_state->base);
	if (vkms_state)
		FUNC0(&vkms_state->composer_work, vkms_composer_worker);
}