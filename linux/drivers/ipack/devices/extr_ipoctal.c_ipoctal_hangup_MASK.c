#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct ipoctal_channel* driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  open_wait; } ;
struct ipoctal_channel {TYPE_1__ tty_port; int /*<<< orphan*/  lock; scalar_t__ pointer_write; scalar_t__ pointer_read; scalar_t__ nb_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipoctal_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	unsigned long flags;
	struct ipoctal_channel *channel = tty->driver_data;

	if (channel == NULL)
		return;

	FUNC1(&channel->lock, flags);
	channel->nb_bytes = 0;
	channel->pointer_read = 0;
	channel->pointer_write = 0;
	FUNC2(&channel->lock, flags);

	FUNC3(&channel->tty_port);

	FUNC0(channel);
	FUNC4(&channel->tty_port, 0);
	FUNC5(&channel->tty_port.open_wait);
}