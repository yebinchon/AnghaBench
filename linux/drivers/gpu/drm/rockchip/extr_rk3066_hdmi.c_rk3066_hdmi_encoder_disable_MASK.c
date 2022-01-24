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
struct rk3066_hdmi {int /*<<< orphan*/  dev; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  HDMI_AUDIO_CP_LOGIC_RESET ; 
 int /*<<< orphan*/  HDMI_AUDIO_CP_LOGIC_RESET_MASK ; 
 int /*<<< orphan*/  HDMI_SYS_POWER_MODE_A ; 
 scalar_t__ HDMI_SYS_POWER_MODE_E ; 
 int /*<<< orphan*/  HDMI_VIDEO_AUDIO_DISABLE_MASK ; 
 int /*<<< orphan*/  HDMI_VIDEO_CTRL2 ; 
 int /*<<< orphan*/  FUNC1 (struct rk3066_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rk3066_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rk3066_hdmi*) ; 
 int /*<<< orphan*/  FUNC4 (struct rk3066_hdmi*,int /*<<< orphan*/ ) ; 
 struct rk3066_hdmi* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct rk3066_hdmi *hdmi = FUNC5(encoder);

	FUNC0(hdmi->dev, "hdmi encoder disable\n");

	if (FUNC3(hdmi) == HDMI_SYS_POWER_MODE_E) {
		FUNC2(hdmi, HDMI_VIDEO_CTRL2,
			    HDMI_VIDEO_AUDIO_DISABLE_MASK);
		FUNC1(hdmi, HDMI_VIDEO_CTRL2,
			  HDMI_AUDIO_CP_LOGIC_RESET_MASK,
			  HDMI_AUDIO_CP_LOGIC_RESET);
		FUNC6(500, 510);
	}
	FUNC4(hdmi, HDMI_SYS_POWER_MODE_A);
}