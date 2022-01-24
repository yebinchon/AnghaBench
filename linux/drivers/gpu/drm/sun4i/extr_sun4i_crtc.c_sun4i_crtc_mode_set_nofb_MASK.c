#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sun4i_crtc {int /*<<< orphan*/  tcon; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;

/* Variables and functions */
 struct sun4i_crtc* FUNC0 (struct drm_crtc*) ; 
 struct drm_encoder* FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct drm_encoder*,struct drm_display_mode*) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc)
{
	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
	struct drm_encoder *encoder = FUNC1(crtc);
	struct sun4i_crtc *scrtc = FUNC0(crtc);

	FUNC2(scrtc->tcon, encoder, mode);
}