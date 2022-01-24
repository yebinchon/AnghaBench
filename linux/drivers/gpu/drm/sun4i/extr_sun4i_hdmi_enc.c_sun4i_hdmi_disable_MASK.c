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
typedef  int /*<<< orphan*/  u32 ;
struct sun4i_hdmi {int /*<<< orphan*/  tmds_clk; scalar_t__ base; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SUN4I_HDMI_VID_CTRL_ENABLE ; 
 scalar_t__ SUN4I_HDMI_VID_CTRL_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sun4i_hdmi* FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder)
{
	struct sun4i_hdmi *hdmi = FUNC2(encoder);
	u32 val;

	FUNC0("Disabling the HDMI Output\n");

	val = FUNC3(hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
	val &= ~SUN4I_HDMI_VID_CTRL_ENABLE;
	FUNC4(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);

	FUNC1(hdmi->tmds_clk);
}