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
struct intel_hdcp {scalar_t__ value; int /*<<< orphan*/  check_work; int /*<<< orphan*/  mutex; scalar_t__ hdcp_encrypted; scalar_t__ hdcp2_encrypted; int /*<<< orphan*/  shim; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;

/* Variables and functions */
 scalar_t__ DRM_MODE_CONTENT_PROTECTION_UNDESIRED ; 
 int ENOENT ; 
 int FUNC0 (struct intel_connector*) ; 
 int FUNC1 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct intel_connector *connector)
{
	struct intel_hdcp *hdcp = &connector->hdcp;
	int ret = 0;

	if (!hdcp->shim)
		return -ENOENT;

	FUNC3(&hdcp->mutex);

	if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
		hdcp->value = DRM_MODE_CONTENT_PROTECTION_UNDESIRED;
		if (hdcp->hdcp2_encrypted)
			ret = FUNC0(connector);
		else if (hdcp->hdcp_encrypted)
			ret = FUNC1(connector);
	}

	FUNC4(&hdcp->mutex);
	FUNC2(&hdcp->check_work);
	return ret;
}