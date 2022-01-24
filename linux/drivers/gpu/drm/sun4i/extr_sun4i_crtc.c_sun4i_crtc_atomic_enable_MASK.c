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
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct sun4i_crtc* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 struct drm_encoder* FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct drm_encoder*,int) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc,
				     struct drm_crtc_state *old_state)
{
	struct drm_encoder *encoder = FUNC3(crtc);
	struct sun4i_crtc *scrtc = FUNC1(crtc);

	FUNC0("Enabling the CRTC\n");

	FUNC4(scrtc->tcon, encoder, true);

	FUNC2(crtc);
}