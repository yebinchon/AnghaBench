#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stratix10_svc_chan {int /*<<< orphan*/  lock; TYPE_3__* ctrl; int /*<<< orphan*/ * scl; } ;
struct TYPE_6__ {TYPE_2__* dev; int /*<<< orphan*/  num_active_client; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct stratix10_svc_chan *chan)
{
	unsigned long flag;

	FUNC1(&chan->lock, flag);
	chan->scl = NULL;
	chan->ctrl->num_active_client--;
	FUNC0(chan->ctrl->dev->driver->owner);
	FUNC2(&chan->lock, flag);
}