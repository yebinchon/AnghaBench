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
struct sti_hdmi_connector {struct sti_hdmi* hdmi; } ;
struct sti_hdmi {int /*<<< orphan*/  clk_pix; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int CLK_TOLERANCE_HZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int MODE_BAD ; 
 int MODE_OK ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct sti_hdmi_connector* FUNC2 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC3(struct drm_connector *connector,
					struct drm_display_mode *mode)
{
	int target = mode->clock * 1000;
	int target_min = target - CLK_TOLERANCE_HZ;
	int target_max = target + CLK_TOLERANCE_HZ;
	int result;
	struct sti_hdmi_connector *hdmi_connector
		= FUNC2(connector);
	struct sti_hdmi *hdmi = hdmi_connector->hdmi;


	result = FUNC1(hdmi->clk_pix, target);

	FUNC0("target rate = %d => available rate = %d\n",
			 target, result);

	if ((result < target_min) || (result > target_max)) {
		FUNC0("hdmi pixclk=%d not supported\n", target);
		return MODE_BAD;
	}

	return MODE_OK;
}