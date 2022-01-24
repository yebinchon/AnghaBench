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
struct serio {struct arc_ps2_port* port_data; } ;
struct arc_ps2_port {int /*<<< orphan*/  status_addr; } ;

/* Variables and functions */
 int PS2_STAT_RX_INT_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct serio *io)
{
	struct arc_ps2_port *port = io->port_data;

	FUNC1(FUNC0(port->status_addr) & ~PS2_STAT_RX_INT_EN,
		  port->status_addr);
}