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
struct rotary_encoder {int armed; int dir; int /*<<< orphan*/  access_mutex; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct rotary_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct rotary_encoder*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct rotary_encoder *encoder = dev_id;
	unsigned int state;

	FUNC0(&encoder->access_mutex);

	state = FUNC2(encoder);

	switch (state) {
	case 0x0:
		if (encoder->armed) {
			FUNC3(encoder);
			encoder->armed = false;
		}
		break;

	case 0x1:
	case 0x3:
		if (encoder->armed)
			encoder->dir = 2 - state;
		break;

	case 0x2:
		encoder->armed = true;
		break;
	}

	FUNC1(&encoder->access_mutex);

	return IRQ_HANDLED;
}