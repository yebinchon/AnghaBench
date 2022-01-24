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
struct ina2xx_chip_info {int /*<<< orphan*/  int_time_vbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 unsigned int INA226_ITB_MASK ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ina226_conv_time_tab ; 

__attribute__((used)) static int FUNC3(struct ina2xx_chip_info *chip,
				    unsigned int val_us, unsigned int *config)
{
	int bits;

	if (val_us > 8244 || val_us < 140)
		return -EINVAL;

	bits = FUNC2(val_us, ina226_conv_time_tab,
			    FUNC0(ina226_conv_time_tab));

	chip->int_time_vbus = ina226_conv_time_tab[bits];

	*config &= ~INA226_ITB_MASK;
	*config |= FUNC1(bits) & INA226_ITB_MASK;

	return 0;
}