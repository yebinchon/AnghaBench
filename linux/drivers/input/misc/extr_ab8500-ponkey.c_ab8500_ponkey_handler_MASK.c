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
struct ab8500_ponkey {int irq_dbf; int irq_dbr; int /*<<< orphan*/  idev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct ab8500_ponkey *ponkey = data;

	if (irq == ponkey->irq_dbf)
		FUNC0(ponkey->idev, KEY_POWER, true);
	else if (irq == ponkey->irq_dbr)
		FUNC0(ponkey->idev, KEY_POWER, false);

	FUNC1(ponkey->idev);

	return IRQ_HANDLED;
}