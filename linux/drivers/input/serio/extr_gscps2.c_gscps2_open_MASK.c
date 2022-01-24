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
struct serio {struct gscps2port* port_data; } ;
struct gscps2port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct gscps2port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gscps2port*) ; 

__attribute__((used)) static int FUNC3(struct serio *port)
{
	struct gscps2port *ps2port = port->port_data;

	FUNC2(ps2port);

	/* enable it */
	FUNC0(ps2port, ENABLE);

	FUNC1(0, NULL);

	return 0;
}