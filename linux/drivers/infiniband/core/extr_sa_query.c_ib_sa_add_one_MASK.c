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
struct ib_sa_device {int start_port; int end_port; TYPE_2__* port; int /*<<< orphan*/  event_handler; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int valid; } ;
struct TYPE_4__ {int port_num; int /*<<< orphan*/  agent; int /*<<< orphan*/  update_task; int /*<<< orphan*/  ib_cpi_work; TYPE_1__ classport_info; int /*<<< orphan*/  classport_lock; int /*<<< orphan*/ * sm_ah; int /*<<< orphan*/  ah_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_sa_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ib_sa_event ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int /*<<< orphan*/ *,struct ib_sa_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_sa_device*) ; 
 struct ib_sa_device* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port ; 
 scalar_t__ FUNC10 (struct ib_device*,int) ; 
 int FUNC11 (struct ib_device*) ; 
 int FUNC12 (struct ib_device*) ; 
 int /*<<< orphan*/  recv_handler ; 
 int /*<<< orphan*/  sa_client ; 
 int /*<<< orphan*/  send_handler ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ib_sa_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  update_ib_cpi ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct ib_device *device)
{
	struct ib_sa_device *sa_dev;
	int s, e, i;
	int count = 0;

	s = FUNC12(device);
	e = FUNC11(device);

	sa_dev = FUNC9(FUNC14(sa_dev, port, e - s + 1), GFP_KERNEL);
	if (!sa_dev)
		return;

	sa_dev->start_port = s;
	sa_dev->end_port   = e;

	for (i = 0; i <= e - s; ++i) {
		FUNC13(&sa_dev->port[i].ah_lock);
		if (!FUNC10(device, i + 1))
			continue;

		sa_dev->port[i].sm_ah    = NULL;
		sa_dev->port[i].port_num = i + s;

		FUNC13(&sa_dev->port[i].classport_lock);
		sa_dev->port[i].classport_info.valid = false;

		sa_dev->port[i].agent =
			FUNC5(device, i + s, IB_QPT_GSI,
					      NULL, 0, send_handler,
					      recv_handler, sa_dev, 0);
		if (FUNC3(sa_dev->port[i].agent))
			goto err;

		FUNC2(&sa_dev->port[i].update_task, update_sm_ah);
		FUNC0(&sa_dev->port[i].ib_cpi_work,
				  update_ib_cpi);

		count++;
	}

	if (!count)
		goto free;

	FUNC6(device, &sa_client, sa_dev);

	/*
	 * We register our event handler after everything is set up,
	 * and then update our cached info after the event handler is
	 * registered to avoid any problems if a port changes state
	 * during our initialization.
	 */

	FUNC1(&sa_dev->event_handler, device, ib_sa_event);
	FUNC4(&sa_dev->event_handler);

	for (i = 0; i <= e - s; ++i) {
		if (FUNC10(device, i + 1))
			FUNC15(&sa_dev->port[i].update_task);
	}

	return;

err:
	while (--i >= 0) {
		if (FUNC10(device, i + 1))
			FUNC7(sa_dev->port[i].agent);
	}
free:
	FUNC8(sa_dev);
	return;
}