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
struct nouveau_drm {struct drm_device* dev; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
typedef  enum mode_set_atomic { ____Placeholder_mode_set_atomic } mode_set_atomic ;

/* Variables and functions */
 int ENTER_ATOMIC_MODE_SET ; 
 struct nouveau_drm* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_crtc*,struct drm_framebuffer*,int,int,int) ; 

__attribute__((used)) static int
FUNC4(struct drm_crtc *crtc,
			       struct drm_framebuffer *fb,
			       int x, int y, enum mode_set_atomic state)
{
	struct nouveau_drm *drm = FUNC0(crtc->dev);
	struct drm_device *dev = drm->dev;

	if (state == ENTER_ATOMIC_MODE_SET)
		FUNC2(dev);
	else
		FUNC1(dev);

	return FUNC3(crtc, fb, x, y, true);
}