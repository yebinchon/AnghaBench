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
struct TYPE_2__ {int tx_oe; } ;
union cvmx_gpio_bit_cfgx {scalar_t__ u64; TYPE_1__ s; } ;
struct octeon_gpio {scalar_t__ register_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 struct octeon_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset,
			       int value)
{
	struct octeon_gpio *gpio = FUNC2(chip);
	union cvmx_gpio_bit_cfgx cfgx;

	FUNC3(chip, offset, value);

	cfgx.u64 = 0;
	cfgx.s.tx_oe = 1;

	FUNC1(gpio->register_base + FUNC0(offset), cfgx.u64);
	return 0;
}