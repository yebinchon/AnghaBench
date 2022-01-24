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
struct serio {struct ps2mult_port* port_data; int /*<<< orphan*/  parent; } ;
struct ps2mult_port {int registered; } ;
struct ps2mult {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct ps2mult* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct serio *serio)
{
	struct ps2mult *psm = FUNC0(serio->parent);
	struct ps2mult_port *port = serio->port_data;
	unsigned long flags;

	FUNC1(&psm->lock, flags);
	port->registered = true;
	FUNC2(&psm->lock, flags);

	return 0;
}