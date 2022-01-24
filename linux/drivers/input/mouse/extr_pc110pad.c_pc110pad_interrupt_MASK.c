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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int pc110pad_count ; 
 int* pc110pad_data ; 
 int /*<<< orphan*/  pc110pad_dev ; 
 int pc110pad_io ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *ptr)
{
	int value     = FUNC0(pc110pad_io);
	int handshake = FUNC0(pc110pad_io + 2);

	FUNC4(handshake |  1, pc110pad_io + 2);
	FUNC5(2);
	FUNC4(handshake & ~1, pc110pad_io + 2);
	FUNC5(2);
	FUNC0(0x64);

	pc110pad_data[pc110pad_count++] = value;

	if (pc110pad_count < 3)
		return IRQ_HANDLED;

	FUNC2(pc110pad_dev, BTN_TOUCH,
		pc110pad_data[0] & 0x01);
	FUNC1(pc110pad_dev, ABS_X,
		pc110pad_data[1] | ((pc110pad_data[0] << 3) & 0x80) | ((pc110pad_data[0] << 1) & 0x100));
	FUNC1(pc110pad_dev, ABS_Y,
		pc110pad_data[2] | ((pc110pad_data[0] << 4) & 0x80));
	FUNC3(pc110pad_dev);

	pc110pad_count = 0;
	return IRQ_HANDLED;
}