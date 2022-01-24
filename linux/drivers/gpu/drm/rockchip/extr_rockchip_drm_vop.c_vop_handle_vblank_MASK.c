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
struct drm_crtc {int dummy; } ;
struct vop {int /*<<< orphan*/  fb_unref_work; int /*<<< orphan*/  pending; int /*<<< orphan*/ * event; struct drm_crtc crtc; struct drm_device* drm_dev; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOP_PENDING_FB_UNREF ; 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct vop *vop)
{
	struct drm_device *drm = vop->drm_dev;
	struct drm_crtc *crtc = &vop->crtc;

	FUNC3(&drm->event_lock);
	if (vop->event) {
		FUNC0(crtc, vop->event);
		FUNC1(crtc);
		vop->event = NULL;
	}
	FUNC4(&drm->event_lock);

	if (FUNC5(VOP_PENDING_FB_UNREF, &vop->pending))
		FUNC2(&vop->fb_unref_work, system_unbound_wq);
}