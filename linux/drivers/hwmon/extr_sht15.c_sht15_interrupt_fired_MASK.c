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
struct sht15_data {scalar_t__ state; int /*<<< orphan*/  read_work; int /*<<< orphan*/  interrupt_handled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SHT15_READING_NOTHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *d)
{
	struct sht15_data *data = d;

	/* First disable the interrupt */
	FUNC1(irq);
	FUNC0(&data->interrupt_handled);
	/* Then schedule a reading work struct */
	if (data->state != SHT15_READING_NOTHING)
		FUNC2(&data->read_work);
	return IRQ_HANDLED;
}