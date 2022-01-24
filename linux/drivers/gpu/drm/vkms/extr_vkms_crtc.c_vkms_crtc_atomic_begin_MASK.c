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
struct vkms_output {int /*<<< orphan*/  lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct vkms_output* FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_crtc_state)
{
	struct vkms_output *vkms_output = FUNC0(crtc);

	/* This lock is held across the atomic commit to block vblank timer
	 * from scheduling vkms_composer_worker until the composer is updated
	 */
	FUNC1(&vkms_output->lock);
}