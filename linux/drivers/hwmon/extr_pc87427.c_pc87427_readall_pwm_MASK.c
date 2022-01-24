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
typedef  size_t u8 ;
struct pc87427_data {int* address; void** pwm; void** pwm_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t LD_FAN ; 
 scalar_t__ PC87427_REG_BANK ; 
 scalar_t__ PC87427_REG_PWM_DUTY ; 
 scalar_t__ PC87427_REG_PWM_ENABLE ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct pc87427_data *data, u8 nr)
{
	int iobase = data->address[LD_FAN];

	FUNC2(FUNC0(nr), iobase + PC87427_REG_BANK);
	data->pwm_enable[nr] = FUNC1(iobase + PC87427_REG_PWM_ENABLE);
	data->pwm[nr] = FUNC1(iobase + PC87427_REG_PWM_DUTY);
}