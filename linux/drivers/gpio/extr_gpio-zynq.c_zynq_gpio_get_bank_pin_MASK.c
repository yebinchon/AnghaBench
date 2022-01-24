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
struct zynq_gpio {TYPE_1__* p_data; } ;
struct TYPE_2__ {int max_bank; unsigned int* bank_min; unsigned int* bank_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 

__attribute__((used)) static inline void FUNC1(unsigned int pin_num,
					  unsigned int *bank_num,
					  unsigned int *bank_pin_num,
					  struct zynq_gpio *gpio)
{
	int bank;

	for (bank = 0; bank < gpio->p_data->max_bank; bank++) {
		if ((pin_num >= gpio->p_data->bank_min[bank]) &&
		    (pin_num <= gpio->p_data->bank_max[bank])) {
			*bank_num = bank;
			*bank_pin_num = pin_num -
					gpio->p_data->bank_min[bank];
			return;
		}
	}

	/* default */
	FUNC0(true, "invalid GPIO pin number: %u", pin_num);
	*bank_num = 0;
	*bank_pin_num = 0;
}