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
struct opencores_kbd {int /*<<< orphan*/  addr; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct opencores_kbd *opencores_kbd = dev_id;
	struct input_dev *input = opencores_kbd->input;
	unsigned char c;

	c = FUNC2(opencores_kbd->addr);
	FUNC0(input, c & 0x7f, c & 0x80 ? 0 : 1);
	FUNC1(input);

	return IRQ_HANDLED;
}