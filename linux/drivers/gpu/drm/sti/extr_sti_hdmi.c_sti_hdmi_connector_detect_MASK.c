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
struct sti_hdmi {int /*<<< orphan*/  notifier; scalar_t__ hpd; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct sti_hdmi_connector* FUNC2 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC3(struct drm_connector *connector, bool force)
{
	struct sti_hdmi_connector *hdmi_connector
		= FUNC2(connector);
	struct sti_hdmi *hdmi = hdmi_connector->hdmi;

	FUNC0("\n");

	if (hdmi->hpd) {
		FUNC0("hdmi cable connected\n");
		return connector_status_connected;
	}

	FUNC0("hdmi cable disconnected\n");
	FUNC1(hdmi->notifier, CEC_PHYS_ADDR_INVALID);
	return connector_status_disconnected;
}