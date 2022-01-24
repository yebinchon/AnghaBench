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
typedef  int /*<<< orphan*/  u32 ;
struct stm32f7_i2c_timings {int /*<<< orphan*/  scll; int /*<<< orphan*/  sclh; int /*<<< orphan*/  sdadel; int /*<<< orphan*/  scldel; int /*<<< orphan*/  presc; } ;
struct TYPE_2__ {scalar_t__ analog_filter; } ;
struct stm32f7_i2c_dev {scalar_t__ base; TYPE_1__ setup; struct stm32f7_i2c_timings timing; } ;

/* Variables and functions */
 scalar_t__ STM32F7_I2C_CR1 ; 
 int /*<<< orphan*/  STM32F7_I2C_CR1_ANFOFF ; 
 int /*<<< orphan*/  STM32F7_I2C_CR1_PE ; 
 scalar_t__ STM32F7_I2C_TIMINGR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct stm32f7_i2c_dev *i2c_dev)
{
	struct stm32f7_i2c_timings *t = &i2c_dev->timing;
	u32 timing = 0;

	/* Timing settings */
	timing |= FUNC0(t->presc);
	timing |= FUNC1(t->scldel);
	timing |= FUNC4(t->sdadel);
	timing |= FUNC2(t->sclh);
	timing |= FUNC3(t->scll);
	FUNC7(timing, i2c_dev->base + STM32F7_I2C_TIMINGR);

	/* Enable I2C */
	if (i2c_dev->setup.analog_filter)
		FUNC5(i2c_dev->base + STM32F7_I2C_CR1,
				     STM32F7_I2C_CR1_ANFOFF);
	else
		FUNC6(i2c_dev->base + STM32F7_I2C_CR1,
				     STM32F7_I2C_CR1_ANFOFF);
	FUNC6(i2c_dev->base + STM32F7_I2C_CR1,
			     STM32F7_I2C_CR1_PE);
}