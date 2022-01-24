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
struct serio {int /*<<< orphan*/  dev; } ;
struct ps2mult_port {int /*<<< orphan*/  sel; } ;
struct ps2mult {struct ps2mult_port* out_port; struct serio* mx_serio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct serio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ps2mult *psm, struct ps2mult_port *port)
{
	struct serio *mx_serio = psm->mx_serio;

	FUNC1(mx_serio, port->sel);
	psm->out_port = port;
	FUNC0(&mx_serio->dev, "switched to sel %02x\n", port->sel);
}