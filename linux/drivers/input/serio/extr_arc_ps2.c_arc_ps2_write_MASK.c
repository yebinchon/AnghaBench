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
struct serio {int /*<<< orphan*/  dev; struct arc_ps2_port* port_data; } ;
struct arc_ps2_port {int /*<<< orphan*/  data_addr; int /*<<< orphan*/  status_addr; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned int PS2_STAT_TX_ISNOT_FUL ; 
 int STAT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct serio *io, unsigned char val)
{
	unsigned status;
	struct arc_ps2_port *port = io->port_data;
	int timeout = STAT_TIMEOUT;

	do {
		status = FUNC2(port->status_addr);
		FUNC0();

		if (status & PS2_STAT_TX_ISNOT_FUL) {
			FUNC3(val & 0xff, port->data_addr);
			return 0;
		}

	} while (--timeout);

	FUNC1(&io->dev, "write timeout\n");
	return -ETIMEDOUT;
}