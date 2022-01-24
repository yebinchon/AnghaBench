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
struct tegra_output {int dummy; } ;
struct tegra_hdmi {int /*<<< orphan*/  clk_parent; } ;
struct drm_display_mode {int clock; } ;
struct drm_connector {int dummy; } ;
struct clk {int dummy; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int MODE_NOCLOCK ; 
 int MODE_OK ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (struct clk*,unsigned long) ; 
 struct tegra_output* FUNC2 (struct drm_connector*) ; 
 struct tegra_hdmi* FUNC3 (struct tegra_output*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC4(struct drm_connector *connector,
				struct drm_display_mode *mode)
{
	struct tegra_output *output = FUNC2(connector);
	struct tegra_hdmi *hdmi = FUNC3(output);
	unsigned long pclk = mode->clock * 1000;
	enum drm_mode_status status = MODE_OK;
	struct clk *parent;
	long err;

	parent = FUNC0(hdmi->clk_parent);

	err = FUNC1(parent, pclk * 4);
	if (err <= 0)
		status = MODE_NOCLOCK;

	return status;
}