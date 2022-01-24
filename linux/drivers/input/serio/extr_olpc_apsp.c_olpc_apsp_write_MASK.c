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
typedef  unsigned char u32 ;
struct serio {struct olpc_apsp* port_data; } ;
struct olpc_apsp {scalar_t__ base; int /*<<< orphan*/  dev; struct serio* padio; } ;

/* Variables and functions */
 unsigned char CMD_CNTR_MASK ; 
 scalar_t__ COMMAND_FIFO_STATUS ; 
 int ETIMEDOUT ; 
 unsigned char KEYBOARD_PORT ; 
 unsigned char MAX_PENDING_CMDS ; 
 unsigned char PORT_SHIFT ; 
 scalar_t__ SECURE_PROCESSOR_COMMAND ; 
 unsigned char TOUCHPAD_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct serio *port, unsigned char val)
{
	struct olpc_apsp *priv = port->port_data;
	unsigned int i;
	u32 which = 0;

	if (port == priv->padio)
		which = TOUCHPAD_PORT << PORT_SHIFT;
	else
		which = KEYBOARD_PORT << PORT_SHIFT;

	FUNC0(priv->dev, "olpc_apsp_write which=%x val=%x\n", which, val);
	for (i = 0; i < 50; i++) {
		u32 sts = FUNC2(priv->base + COMMAND_FIFO_STATUS);
		if ((sts & CMD_CNTR_MASK) < MAX_PENDING_CMDS) {
			FUNC3(which | val,
			       priv->base + SECURE_PROCESSOR_COMMAND);
			return 0;
		}
		/* SP busy. This has not been seen in practice. */
		FUNC1(1);
	}

	FUNC0(priv->dev, "olpc_apsp_write timeout, status=%x\n",
		FUNC2(priv->base + COMMAND_FIFO_STATUS));

	return -ETIMEDOUT;
}