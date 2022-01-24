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
struct vop {int /*<<< orphan*/  dclk; } ;
struct drm_display_mode {int clock; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct vop* FUNC2 (struct drm_crtc*) ; 

__attribute__((used)) static bool FUNC3(struct drm_crtc *crtc,
				const struct drm_display_mode *mode,
				struct drm_display_mode *adjusted_mode)
{
	struct vop *vop = FUNC2(crtc);

	adjusted_mode->clock =
		FUNC0(FUNC1(vop->dclk,
					    adjusted_mode->clock * 1000), 1000);

	return true;
}