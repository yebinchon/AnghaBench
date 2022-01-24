#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rockchip_saradc {int /*<<< orphan*/  completion; scalar_t__ regs; TYPE_1__* data; int /*<<< orphan*/  last_val; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ num_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SARADC_CTRL ; 
 scalar_t__ SARADC_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct rockchip_saradc *info = dev_id;

	/* Read value */
	info->last_val = FUNC2(info->regs + SARADC_DATA);
	info->last_val &= FUNC0(info->data->num_bits - 1, 0);

	/* Clear irq & power down adc */
	FUNC3(0, info->regs + SARADC_CTRL);

	FUNC1(&info->completion);

	return IRQ_HANDLED;
}