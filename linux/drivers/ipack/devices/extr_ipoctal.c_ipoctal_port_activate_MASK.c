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
struct tty_struct {int /*<<< orphan*/  dev; } ;
struct tty_port {int dummy; } ;
struct ipoctal_channel {int rx_enable; TYPE_2__* regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  cr; } ;
struct TYPE_4__ {TYPE_1__ w; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_ENABLE_RX ; 
 struct ipoctal_channel* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct tty_port *port, struct tty_struct *tty)
{
	struct ipoctal_channel *channel;

	channel = FUNC0(tty->dev);

	/*
	 * Enable RX. TX will be enabled when
	 * there is something to send
	 */
	FUNC1(CR_ENABLE_RX, &channel->regs->w.cr);
	channel->rx_enable = 1;
	return 0;
}