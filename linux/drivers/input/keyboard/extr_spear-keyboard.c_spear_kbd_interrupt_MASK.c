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
typedef  size_t u32 ;
struct spear_kbd {unsigned int last_key; unsigned int* keycodes; scalar_t__ io_base; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 size_t DATA_COLUMN_MASK ; 
 scalar_t__ DATA_REG ; 
 size_t DATA_ROW_MASK ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int KEY_RESERVED ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 size_t STATUS_DATA_AVAIL ; 
 scalar_t__ STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 size_t FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct spear_kbd *kbd = dev_id;
	struct input_dev *input = kbd->input;
	unsigned int key;
	u32 sts, val;

	sts = FUNC3(kbd->io_base + STATUS_REG);
	if (!(sts & STATUS_DATA_AVAIL))
		return IRQ_NONE;

	if (kbd->last_key != KEY_RESERVED) {
		FUNC1(input, kbd->last_key, 0);
		kbd->last_key = KEY_RESERVED;
	}

	/* following reads active (row, col) pair */
	val = FUNC3(kbd->io_base + DATA_REG) &
		(DATA_ROW_MASK | DATA_COLUMN_MASK);
	key = kbd->keycodes[val];

	FUNC0(input, EV_MSC, MSC_SCAN, val);
	FUNC1(input, key, 1);
	FUNC2(input);

	kbd->last_key = key;

	/* clear interrupt */
	FUNC4(0, kbd->io_base + STATUS_REG);

	return IRQ_HANDLED;
}