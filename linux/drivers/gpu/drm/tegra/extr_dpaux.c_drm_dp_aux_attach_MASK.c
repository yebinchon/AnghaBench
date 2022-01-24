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
struct TYPE_2__ {int /*<<< orphan*/  polled; } ;
struct tegra_output {TYPE_1__ connector; } ;
struct tegra_dpaux {int /*<<< orphan*/  irq; int /*<<< orphan*/  vdd; struct tegra_output* output; } ;
struct drm_dp_aux {int dummy; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int ETIMEDOUT ; 
 int connector_status_connected ; 
 int FUNC0 (struct drm_dp_aux*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 struct tegra_dpaux* FUNC5 (struct drm_dp_aux*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

int FUNC7(struct drm_dp_aux *aux, struct tegra_output *output)
{
	struct tegra_dpaux *dpaux = FUNC5(aux);
	unsigned long timeout;
	int err;

	output->connector.polled = DRM_CONNECTOR_POLL_HPD;
	dpaux->output = output;

	err = FUNC3(dpaux->vdd);
	if (err < 0)
		return err;

	timeout = jiffies + FUNC2(250);

	while (FUNC4(jiffies, timeout)) {
		enum drm_connector_status status;

		status = FUNC0(aux);
		if (status == connector_status_connected) {
			FUNC1(dpaux->irq);
			return 0;
		}

		FUNC6(1000, 2000);
	}

	return -ETIMEDOUT;
}