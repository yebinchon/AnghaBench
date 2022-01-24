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
struct drm_connector {int dummy; } ;
struct cdn_dp_device {int /*<<< orphan*/  lock; scalar_t__ connected; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct cdn_dp_device* FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum drm_connector_status
FUNC3(struct drm_connector *connector, bool force)
{
	struct cdn_dp_device *dp = FUNC0(connector);
	enum drm_connector_status status = connector_status_disconnected;

	FUNC1(&dp->lock);
	if (dp->connected)
		status = connector_status_connected;
	FUNC2(&dp->lock);

	return status;
}