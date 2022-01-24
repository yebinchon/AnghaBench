#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct host1x_job_unpin_data {int /*<<< orphan*/  bo; int /*<<< orphan*/  sgt; scalar_t__ size; } ;
struct host1x_job {unsigned int num_unpins; int /*<<< orphan*/  gather_copy; int /*<<< orphan*/  gather_copy_mapped; scalar_t__ gather_copy_size; TYPE_1__* channel; int /*<<< orphan*/ * addr_phys; struct host1x_job_unpin_data* unpins; } ;
struct host1x {int /*<<< orphan*/  iova; scalar_t__ domain; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TEGRA_HOST1X_FIREWALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct host1x* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(struct host1x_job *job)
{
	struct host1x *host = FUNC1(job->channel->dev->parent);
	unsigned int i;

	for (i = 0; i < job->num_unpins; i++) {
		struct host1x_job_unpin_data *unpin = &job->unpins[i];

		if (!FUNC0(CONFIG_TEGRA_HOST1X_FIREWALL) &&
		    unpin->size && host->domain) {
			FUNC6(host->domain, job->addr_phys[i],
				    unpin->size);
			FUNC3(&host->iova,
				FUNC7(&host->iova, job->addr_phys[i]));
		}

		FUNC5(unpin->bo, unpin->sgt);
		FUNC4(unpin->bo);
	}

	job->num_unpins = 0;

	if (job->gather_copy_size)
		FUNC2(job->channel->dev, job->gather_copy_size,
			    job->gather_copy_mapped, job->gather_copy);
}