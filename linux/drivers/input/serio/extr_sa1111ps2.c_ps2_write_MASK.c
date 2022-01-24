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
struct serio {struct ps2if* port_data; } ;
struct ps2if {int head; int tail; unsigned char* buf; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_irq; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ PS2DATA ; 
 scalar_t__ PS2STAT ; 
 int PS2STAT_TXE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct serio *io, unsigned char val)
{
	struct ps2if *ps2if = io->port_data;
	unsigned long flags;
	unsigned int head;

	FUNC2(&ps2if->lock, flags);

	/*
	 * If the TX register is empty, we can go straight out.
	 */
	if (FUNC1(ps2if->base + PS2STAT) & PS2STAT_TXE) {
		FUNC4(val, ps2if->base + PS2DATA);
	} else {
		if (ps2if->head == ps2if->tail)
			FUNC0(ps2if->tx_irq);
		head = (ps2if->head + 1) & (sizeof(ps2if->buf) - 1);
		if (head != ps2if->tail) {
			ps2if->buf[ps2if->head] = val;
			ps2if->head = head;
		}
	}

	FUNC3(&ps2if->lock, flags);
	return 0;
}