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
struct rotary_encoder {int last_stable; int dir; int /*<<< orphan*/  access_mutex; } ;
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

	if ((encoder->last_stable + 1) % 4 == state)
		encoder->dir = 1;
	else if (encoder->last_stable == (state + 1) % 4)
		encoder->dir = -1;
	else
		goto out;

	FUNC3(encoder);

out:
	encoder->last_stable = state;
	FUNC1(&encoder->access_mutex);

	return IRQ_HANDLED;
}