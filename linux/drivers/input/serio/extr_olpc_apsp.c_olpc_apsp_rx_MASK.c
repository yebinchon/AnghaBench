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
struct serio {int dummy; } ;
struct olpc_apsp {int /*<<< orphan*/  dev; scalar_t__ base; struct serio* padio; struct serio* kbio; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ COMMAND_RETURN_STATUS ; 
 unsigned int DATA_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ KEYBOARD_PORT ; 
 scalar_t__ PJ_RST_INTERRUPT ; 
 unsigned int PORT_MASK ; 
 scalar_t__ PORT_SHIFT ; 
 scalar_t__ SECURE_PROCESSOR_COMMAND ; 
 unsigned int SP_COMMAND_COMPLETE_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct olpc_apsp *priv = dev_id;
	unsigned int w, tmp;
	struct serio *serio;

	/*
	 * Write 1 to PJ_RST_INTERRUPT to acknowledge and clear the interrupt
	 * Write 0xff00 to SECURE_PROCESSOR_COMMAND.
	 */
	tmp = FUNC3(priv->base + PJ_RST_INTERRUPT);
	if (!(tmp & SP_COMMAND_COMPLETE_RESET)) {
		FUNC1(priv->dev, "spurious interrupt?\n");
		return IRQ_NONE;
	}

	w = FUNC3(priv->base + COMMAND_RETURN_STATUS);
	FUNC0(priv->dev, "olpc_apsp_rx %x\n", w);

	if (w >> PORT_SHIFT == KEYBOARD_PORT)
		serio = priv->kbio;
	else
		serio = priv->padio;

	FUNC4(serio, w & DATA_MASK, 0);

	/* Ack and clear interrupt */
	FUNC5(tmp | SP_COMMAND_COMPLETE_RESET, priv->base + PJ_RST_INTERRUPT);
	FUNC5(PORT_MASK, priv->base + SECURE_PROCESSOR_COMMAND);

	FUNC2(priv->dev, 1000);
	return IRQ_HANDLED;
}