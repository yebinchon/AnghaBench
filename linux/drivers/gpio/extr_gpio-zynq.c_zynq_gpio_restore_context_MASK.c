#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * int_any; int /*<<< orphan*/ * int_polarity; int /*<<< orphan*/ * int_type; int /*<<< orphan*/ * int_en; int /*<<< orphan*/ * dirm; int /*<<< orphan*/ * datamsw; int /*<<< orphan*/ * datalsw; } ;
struct zynq_gpio {scalar_t__ base_addr; TYPE_2__ context; TYPE_1__* p_data; } ;
struct TYPE_3__ {unsigned int max_bank; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct zynq_gpio *gpio)
{
	unsigned int bank_num;

	for (bank_num = 0; bank_num < gpio->p_data->max_bank; bank_num++) {
		FUNC7(gpio->context.datalsw[bank_num],
			       gpio->base_addr +
			       FUNC0(bank_num));
		FUNC7(gpio->context.datamsw[bank_num],
			       gpio->base_addr +
			       FUNC1(bank_num));
		FUNC7(gpio->context.dirm[bank_num],
			       gpio->base_addr +
			       FUNC2(bank_num));
		FUNC7(gpio->context.int_en[bank_num],
			       gpio->base_addr +
			       FUNC4(bank_num));
		FUNC7(gpio->context.int_type[bank_num],
			       gpio->base_addr +
			       FUNC6(bank_num));
		FUNC7(gpio->context.int_polarity[bank_num],
			       gpio->base_addr +
			       FUNC5(bank_num));
		FUNC7(gpio->context.int_any[bank_num],
			       gpio->base_addr +
			       FUNC3(bank_num));
	}
}