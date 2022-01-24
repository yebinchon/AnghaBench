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
struct stratix10_svc_chan {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int num_active_client; int /*<<< orphan*/ * task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(struct stratix10_svc_chan *chan)
{
	/* stop thread when thread is running AND only one active client */
	if (chan->ctrl->task && chan->ctrl->num_active_client <= 1) {
		FUNC1("svc_smc_hvc_shm_thread is stopped\n");
		FUNC0(chan->ctrl->task);
		chan->ctrl->task = NULL;
	}
}