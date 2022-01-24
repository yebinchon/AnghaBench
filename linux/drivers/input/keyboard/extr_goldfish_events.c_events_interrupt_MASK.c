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
struct event_dev {int /*<<< orphan*/  input; scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ REG_READ ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct event_dev *edev = dev_id;
	unsigned int type, code, value;

	type = FUNC0(edev->addr + REG_READ);
	code = FUNC0(edev->addr + REG_READ);
	value = FUNC0(edev->addr + REG_READ);

	FUNC1(edev->input, type, code, value);
	FUNC2(edev->input);
	return IRQ_HANDLED;
}