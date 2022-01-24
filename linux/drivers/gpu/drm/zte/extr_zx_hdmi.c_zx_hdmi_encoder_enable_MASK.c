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
struct zx_hdmi {int /*<<< orphan*/  xclk; int /*<<< orphan*/  osc_clk; int /*<<< orphan*/  cec_clk; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOU_HDMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct zx_hdmi* FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zx_hdmi*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder)
{
	struct zx_hdmi *hdmi = FUNC1(encoder);

	FUNC0(hdmi->cec_clk);
	FUNC0(hdmi->osc_clk);
	FUNC0(hdmi->xclk);

	FUNC3(hdmi);

	FUNC2(VOU_HDMI, encoder->crtc);
}