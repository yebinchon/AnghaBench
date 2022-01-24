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
struct twl6030_gpadc_data {int /*<<< orphan*/  irq_complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct twl6030_gpadc_data* FUNC1 (void*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *indio_dev)
{
	struct twl6030_gpadc_data *gpadc = FUNC1(indio_dev);

	FUNC0(&gpadc->irq_complete);

	return IRQ_HANDLED;
}