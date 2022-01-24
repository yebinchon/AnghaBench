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
struct ps2mult_port {int /*<<< orphan*/  serio; scalar_t__ registered; } ;
struct ps2mult {int escape; int /*<<< orphan*/  lock; struct ps2mult_port* in_port; struct ps2mult_port* ports; struct ps2mult_port* out_port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  PS2MULT_BSYNC 133 
#define  PS2MULT_ESCAPE 132 
 size_t PS2MULT_KBD_PORT ; 
#define  PS2MULT_KB_SELECTOR 131 
 size_t PS2MULT_MOUSE_PORT ; 
#define  PS2MULT_MS_SELECTOR 130 
#define  PS2MULT_SESSION_END 129 
#define  PS2MULT_SESSION_START 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct ps2mult* FUNC1 (struct serio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(struct serio *serio,
				     unsigned char data, unsigned int dfl)
{
	struct ps2mult *psm = FUNC1(serio);
	struct ps2mult_port *in_port;
	unsigned long flags;

	FUNC0(&serio->dev, "Received %02x flags %02x\n", data, dfl);

	FUNC3(&psm->lock, flags);

	if (psm->escape) {
		psm->escape = false;
		in_port = psm->in_port;
		if (in_port->registered)
			FUNC2(in_port->serio, data, dfl);
		goto out;
	}

	switch (data) {
	case PS2MULT_ESCAPE:
		FUNC0(&serio->dev, "ESCAPE\n");
		psm->escape = true;
		break;

	case PS2MULT_BSYNC:
		FUNC0(&serio->dev, "BSYNC\n");
		psm->in_port = psm->out_port;
		break;

	case PS2MULT_SESSION_START:
		FUNC0(&serio->dev, "SS\n");
		break;

	case PS2MULT_SESSION_END:
		FUNC0(&serio->dev, "SE\n");
		break;

	case PS2MULT_KB_SELECTOR:
		FUNC0(&serio->dev, "KB\n");
		psm->in_port = &psm->ports[PS2MULT_KBD_PORT];
		break;

	case PS2MULT_MS_SELECTOR:
		FUNC0(&serio->dev, "MS\n");
		psm->in_port = &psm->ports[PS2MULT_MOUSE_PORT];
		break;

	default:
		in_port = psm->in_port;
		if (in_port->registered)
			FUNC2(in_port->serio, data, dfl);
		break;
	}

 out:
	FUNC4(&psm->lock, flags);
	return IRQ_HANDLED;
}