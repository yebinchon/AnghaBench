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
struct hdmi_context {int /*<<< orphan*/  notifier; int /*<<< orphan*/  hpd_gpio; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct hdmi_context* FUNC1 (struct drm_connector*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_connector_status FUNC3(struct drm_connector *connector,
				bool force)
{
	struct hdmi_context *hdata = FUNC1(connector);

	if (FUNC2(hdata->hpd_gpio))
		return connector_status_connected;

	FUNC0(hdata->notifier, CEC_PHYS_ADDR_INVALID);
	return connector_status_disconnected;
}