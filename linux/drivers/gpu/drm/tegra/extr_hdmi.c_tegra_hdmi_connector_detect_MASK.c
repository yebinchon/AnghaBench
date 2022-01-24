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
struct tegra_hdmi {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE ; 
 int connector_status_connected ; 
 struct tegra_output* FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_connector*,int) ; 
 struct tegra_hdmi* FUNC3 (struct tegra_output*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC4(struct drm_connector *connector, bool force)
{
	struct tegra_output *output = FUNC0(connector);
	struct tegra_hdmi *hdmi = FUNC3(output);
	enum drm_connector_status status;

	status = FUNC2(connector, force);
	if (status == connector_status_connected)
		return status;

	FUNC1(hdmi, 0, HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE);
	return status;
}