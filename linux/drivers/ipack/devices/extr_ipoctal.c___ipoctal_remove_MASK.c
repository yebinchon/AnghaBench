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
struct ipoctal_channel {int /*<<< orphan*/  tty_port; } ;
struct ipoctal {int /*<<< orphan*/  tty_drv; struct ipoctal_channel* channel; TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* free_irq ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int NR_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct ipoctal*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ipoctal *ipoctal)
{
	int i;

	ipoctal->dev->bus->ops->free_irq(ipoctal->dev);

	for (i = 0; i < NR_CHANNELS; i++) {
		struct ipoctal_channel *channel = &ipoctal->channel[i];
		FUNC5(ipoctal->tty_drv, i);
		FUNC4(&channel->tty_port);
		FUNC3(&channel->tty_port);
	}

	FUNC6(ipoctal->tty_drv);
	FUNC1(ipoctal->tty_drv);
	FUNC0(ipoctal);
}