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
struct sun4i_crtc {int /*<<< orphan*/  tcon; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_crtc*) ; 
 struct sun4i_crtc* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct sun4i_crtc *scrtc = FUNC1(crtc);

	FUNC0("Disabling VBLANK on crtc %p\n", crtc);

	FUNC2(scrtc->tcon, false);
}