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
struct nouveau_crtc {int /*<<< orphan*/  vblank; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 struct drm_crtc* FUNC0 (struct drm_device*,unsigned int) ; 
 struct nouveau_crtc* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct drm_device *dev, unsigned int pipe)
{
	struct drm_crtc *crtc;
	struct nouveau_crtc *nv_crtc;

	crtc = FUNC0(dev, pipe);
	if (!crtc)
		return;

	nv_crtc = FUNC1(crtc);
	FUNC2(&nv_crtc->vblank);
}