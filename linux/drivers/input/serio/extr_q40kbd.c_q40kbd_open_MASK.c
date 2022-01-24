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
struct serio {struct q40kbd* port_data; } ;
struct q40kbd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEYBOARD_UNLOCK_REG ; 
 int /*<<< orphan*/  KEY_IRQ_ENABLE_REG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct q40kbd*) ; 

__attribute__((used)) static int FUNC2(struct serio *port)
{
	struct q40kbd *q40kbd = port->port_data;

	FUNC1(q40kbd);

	/* off we go */
	FUNC0(-1, KEYBOARD_UNLOCK_REG);
	FUNC0(1, KEY_IRQ_ENABLE_REG);

	return 0;
}