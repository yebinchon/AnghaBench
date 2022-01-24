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
struct sun4i_hdmi {int /*<<< orphan*/  cec_adap; scalar_t__ base; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 unsigned long SUN4I_HDMI_HPD_HIGH ; 
 scalar_t__ SUN4I_HDMI_HPD_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct sun4i_hdmi* FUNC1 (struct drm_connector*) ; 
 scalar_t__ FUNC2 (scalar_t__,unsigned long,unsigned long,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum drm_connector_status
FUNC3(struct drm_connector *connector, bool force)
{
	struct sun4i_hdmi *hdmi = FUNC1(connector);
	unsigned long reg;

	if (FUNC2(hdmi->base + SUN4I_HDMI_HPD_REG, reg,
			       reg & SUN4I_HDMI_HPD_HIGH,
			       0, 500000)) {
		FUNC0(hdmi->cec_adap);
		return connector_status_disconnected;
	}

	return connector_status_connected;
}