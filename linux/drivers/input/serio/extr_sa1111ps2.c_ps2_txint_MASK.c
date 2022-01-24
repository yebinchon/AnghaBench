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
struct ps2if {size_t head; size_t tail; int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/ * buf; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ PS2DATA ; 
 scalar_t__ PS2STAT ; 
 unsigned int PS2STAT_TXE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct ps2if *ps2if = dev_id;
	unsigned int status;

	FUNC2(&ps2if->lock);
	status = FUNC1(ps2if->base + PS2STAT);
	if (ps2if->head == ps2if->tail) {
		FUNC0(irq);
		/* done */
	} else if (status & PS2STAT_TXE) {
		FUNC4(ps2if->buf[ps2if->tail], ps2if->base + PS2DATA);
		ps2if->tail = (ps2if->tail + 1) & (sizeof(ps2if->buf) - 1);
	}
	FUNC3(&ps2if->lock);

	return IRQ_HANDLED;
}