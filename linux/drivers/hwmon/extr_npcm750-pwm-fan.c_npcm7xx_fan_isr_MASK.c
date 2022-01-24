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
typedef  scalar_t__ u8 ;
struct npcm7xx_pwm_fan_data {int* fan_irq; int /*<<< orphan*/ * fan_lock; int /*<<< orphan*/  fan_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  NPCM7XX_FAN_CMPA ; 
 int /*<<< orphan*/  NPCM7XX_FAN_CMPB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct npcm7xx_pwm_fan_data*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct npcm7xx_pwm_fan_data *data = dev_id;
	unsigned long flags;
	int module;
	u8 flag;

	module = irq - data->fan_irq[0];
	FUNC3(&data->fan_lock[module], flags);

	flag = FUNC1(FUNC0(data->fan_base, module));
	if (flag > 0) {
		FUNC2(data, module, NPCM7XX_FAN_CMPA, flag);
		FUNC2(data, module, NPCM7XX_FAN_CMPB, flag);
		FUNC4(&data->fan_lock[module], flags);
		return IRQ_HANDLED;
	}

	FUNC4(&data->fan_lock[module], flags);

	return IRQ_NONE;
}