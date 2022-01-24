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
struct host1x_job_gather {int handled; scalar_t__ bo; int /*<<< orphan*/  base; } ;
struct host1x_job {unsigned int num_gathers; struct host1x_job_gather* gathers; int /*<<< orphan*/ * gather_addr_phys; } ;
struct host1x {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TEGRA_HOST1X_FIREWALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct host1x_job*,struct device*) ; 
 struct host1x* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct host1x_job*,struct host1x_job_gather*) ; 
 int /*<<< orphan*/  FUNC4 (struct host1x_job*) ; 
 int FUNC5 (struct host1x*,struct host1x_job*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct host1x_job *job, struct device *dev)
{
	int err;
	unsigned int i, j;
	struct host1x *host = FUNC2(dev->parent);

	/* pin memory */
	err = FUNC5(host, job);
	if (err)
		goto out;

	if (FUNC0(CONFIG_TEGRA_HOST1X_FIREWALL)) {
		err = FUNC1(job, dev);
		if (err)
			goto out;
	}

	/* patch gathers */
	for (i = 0; i < job->num_gathers; i++) {
		struct host1x_job_gather *g = &job->gathers[i];

		/* process each gather mem only once */
		if (g->handled)
			continue;

		/* copy_gathers() sets gathers base if firewall is enabled */
		if (!FUNC0(CONFIG_TEGRA_HOST1X_FIREWALL))
			g->base = job->gather_addr_phys[i];

		for (j = i + 1; j < job->num_gathers; j++) {
			if (job->gathers[j].bo == g->bo) {
				job->gathers[j].handled = true;
				job->gathers[j].base = g->base;
			}
		}

		err = FUNC3(job, g);
		if (err)
			break;
	}

out:
	if (err)
		FUNC4(job);
	FUNC6();

	return err;
}