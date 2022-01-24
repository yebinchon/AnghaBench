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
struct rk3066_hdmi {int dummy; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int HDMI_HPG_IN_STATUS_HIGH ; 
 int /*<<< orphan*/  HDMI_HPG_MENS_STA ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int FUNC0 (struct rk3066_hdmi*,int /*<<< orphan*/ ) ; 
 struct rk3066_hdmi* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC2(struct drm_connector *connector, bool force)
{
	struct rk3066_hdmi *hdmi = FUNC1(connector);

	return (FUNC0(hdmi, HDMI_HPG_MENS_STA) & HDMI_HPG_IN_STATUS_HIGH) ?
		connector_status_connected : connector_status_disconnected;
}