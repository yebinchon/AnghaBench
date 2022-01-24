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
struct rvt_ibport {struct ib_mad_agent* send_agent; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* notify_free_mad_agent ) (struct rvt_dev_info*,int) ;int /*<<< orphan*/  (* notify_create_mad_agent ) (struct rvt_dev_info*,int) ;} ;
struct TYPE_3__ {int nports; } ;
struct rvt_dev_info {TYPE_2__ driver_f; struct rvt_ibport** ports; TYPE_1__ dparms; int /*<<< orphan*/  ibdev; } ;
struct ib_mad_agent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPT_SMI ; 
 scalar_t__ FUNC0 (struct ib_mad_agent*) ; 
 int FUNC1 (struct ib_mad_agent*) ; 
 struct ib_mad_agent* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_agent*) ; 
 int /*<<< orphan*/  rvt_send_mad_handler ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_dev_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_dev_info*,int) ; 

int FUNC6(struct rvt_dev_info *rdi)
{
	struct ib_mad_agent *agent;
	struct rvt_ibport *rvp;
	int p;
	int ret;

	for (p = 0; p < rdi->dparms.nports; p++) {
		rvp = rdi->ports[p];
		agent = FUNC2(&rdi->ibdev, p + 1,
					      IB_QPT_SMI,
					      NULL, 0, rvt_send_mad_handler,
					      NULL, NULL, 0);
		if (FUNC0(agent)) {
			ret = FUNC1(agent);
			goto err;
		}

		rvp->send_agent = agent;

		if (rdi->driver_f.notify_create_mad_agent)
			rdi->driver_f.notify_create_mad_agent(rdi, p);
	}

	return 0;

err:
	for (p = 0; p < rdi->dparms.nports; p++) {
		rvp = rdi->ports[p];
		if (rvp->send_agent) {
			agent = rvp->send_agent;
			rvp->send_agent = NULL;
			FUNC3(agent);
			if (rdi->driver_f.notify_free_mad_agent)
				rdi->driver_f.notify_free_mad_agent(rdi, p);
		}
	}

	return ret;
}