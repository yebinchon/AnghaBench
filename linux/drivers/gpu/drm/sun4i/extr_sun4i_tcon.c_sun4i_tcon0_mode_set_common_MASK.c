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
struct sun4i_tcon {int /*<<< orphan*/  regs; int /*<<< orphan*/  dclk; } ;
struct drm_display_mode {int crtc_clock; int /*<<< orphan*/  crtc_vdisplay; int /*<<< orphan*/  crtc_hdisplay; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN4I_TCON0_BASIC0_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct sun4i_tcon *tcon,
					const struct drm_display_mode *mode)
{
	/* Configure the dot clock */
	FUNC2(tcon->dclk, mode->crtc_clock * 1000);

	/* Set the resolution */
	FUNC3(tcon->regs, SUN4I_TCON0_BASIC0_REG,
		     FUNC0(mode->crtc_hdisplay) |
		     FUNC1(mode->crtc_vdisplay));
}