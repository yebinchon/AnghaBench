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
struct ina2xx_chip_info {int /*<<< orphan*/  avg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 unsigned int INA226_AVG_MASK ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ina226_avg_tab ; 

__attribute__((used)) static int FUNC3(struct ina2xx_chip_info *chip, unsigned int val,
			      unsigned int *config)
{
	int bits;

	if (val > 1024 || val < 1)
		return -EINVAL;

	bits = FUNC2(val, ina226_avg_tab,
			    FUNC0(ina226_avg_tab));

	chip->avg = ina226_avg_tab[bits];

	*config &= ~INA226_AVG_MASK;
	*config |= FUNC1(bits) & INA226_AVG_MASK;

	return 0;
}