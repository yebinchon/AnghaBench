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
struct input_dev {int dummy; } ;
struct axp20x_pek {int irq_dbf; int irq_dbr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 struct axp20x_pek* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *pwr)
{
	struct input_dev *idev = pwr;
	struct axp20x_pek *axp20x_pek = FUNC0(idev);

	/*
	 * The power-button is connected to ground so a falling edge (dbf)
	 * means it is pressed.
	 */
	if (irq == axp20x_pek->irq_dbf)
		FUNC1(idev, KEY_POWER, true);
	else if (irq == axp20x_pek->irq_dbr)
		FUNC1(idev, KEY_POWER, false);

	FUNC2(idev);

	return IRQ_HANDLED;
}