#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_connector {int dummy; } ;
struct analogix_dp_device {TYPE_1__* plat_data; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {scalar_t__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct analogix_dp_device*) ; 
 int FUNC2 (struct analogix_dp_device*,int,int) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct analogix_dp_device* FUNC3 (struct drm_connector*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC4(struct drm_connector *connector, bool force)
{
	struct analogix_dp_device *dp = FUNC3(connector);
	enum drm_connector_status status = connector_status_disconnected;
	int ret;

	if (dp->plat_data->panel)
		return connector_status_connected;

	ret = FUNC2(dp, true, false);
	if (ret) {
		FUNC0("Failed to prepare panel (%d)\n", ret);
		return connector_status_disconnected;
	}

	if (!FUNC1(dp))
		status = connector_status_connected;

	ret = FUNC2(dp, false, false);
	if (ret)
		FUNC0("Failed to unprepare panel (%d)\n", ret);

	return status;
}