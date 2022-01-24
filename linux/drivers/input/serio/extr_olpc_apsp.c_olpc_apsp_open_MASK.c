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
struct serio {struct olpc_apsp* port_data; } ;
struct olpc_apsp {scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  open_count; } ;

/* Variables and functions */
 unsigned long CMD_STS_MASK ; 
 scalar_t__ COMMAND_FIFO_STATUS ; 
 int EIO ; 
 unsigned int INT_0 ; 
 scalar_t__ PJ_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct serio *port)
{
	struct olpc_apsp *priv = port->port_data;
	unsigned int tmp;
	unsigned long l;

	if (priv->open_count++ == 0) {
		l = FUNC1(priv->base + COMMAND_FIFO_STATUS);
		if (!(l & CMD_STS_MASK)) {
			FUNC0(priv->dev, "SP cannot accept commands.\n");
			return -EIO;
		}

		/* Enable interrupt 0 by clearing its bit */
		tmp = FUNC1(priv->base + PJ_INTERRUPT_MASK);
		FUNC2(tmp & ~INT_0, priv->base + PJ_INTERRUPT_MASK);
	}

	return 0;
}