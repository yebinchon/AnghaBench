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
struct pcips2_data {int /*<<< orphan*/  io; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PS2_DATA ; 
 scalar_t__ PS2_STATUS ; 
 unsigned char PS2_STAT_PARITY ; 
 unsigned char PS2_STAT_RXFULL ; 
 unsigned int SERIO_PARITY ; 
 int FUNC1 (unsigned char) ; 
 unsigned char FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *devid)
{
	struct pcips2_data *ps2if = devid;
	unsigned char status, scancode;
	int handled = 0;

	do {
		unsigned int flag;

		status = FUNC2(ps2if->base + PS2_STATUS);
		if (!(status & PS2_STAT_RXFULL))
			break;
		handled = 1;
		scancode = FUNC2(ps2if->base + PS2_DATA);
		if (status == 0xff && scancode == 0xff)
			break;

		flag = (status & PS2_STAT_PARITY) ? 0 : SERIO_PARITY;

		if (FUNC1(scancode) & 1)
			flag ^= SERIO_PARITY;

		FUNC3(ps2if->io, scancode, flag);
	} while (1);
	return FUNC0(handled);
}