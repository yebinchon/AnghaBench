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
struct stm32_exti_chip_data {TYPE_1__* host_data; } ;
struct TYPE_2__ {scalar_t__ hwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct stm32_exti_chip_data *chip_data)
{
	if (chip_data->host_data->hwlock)
		FUNC0(chip_data->host_data->hwlock);
}