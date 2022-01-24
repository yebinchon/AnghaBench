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
struct tegra_output {int /*<<< orphan*/  cec; int /*<<< orphan*/  panel; scalar_t__ hpd_gpio; } ;
struct drm_connector {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 struct tegra_output* FUNC1 (struct drm_connector*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

enum drm_connector_status
FUNC3(struct drm_connector *connector, bool force)
{
	struct tegra_output *output = FUNC1(connector);
	enum drm_connector_status status = connector_status_unknown;

	if (output->hpd_gpio) {
		if (FUNC2(output->hpd_gpio) == 0)
			status = connector_status_disconnected;
		else
			status = connector_status_connected;
	} else {
		if (!output->panel)
			status = connector_status_disconnected;
		else
			status = connector_status_connected;
	}

	if (status != connector_status_connected)
		FUNC0(output->cec);

	return status;
}