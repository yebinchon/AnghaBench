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
struct ad5592r_state {int gpio_in; int /*<<< orphan*/  spi_msg; } ;

/* Variables and functions */
 int AD5592R_GPIO_READBACK_EN ; 
 int /*<<< orphan*/  AD5592R_REG_GPIO_IN_EN ; 
 int FUNC0 (struct ad5592r_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ad5592r_state*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ad5592r_state *st, u8 *value)
{
	int ret;

	ret = FUNC0(st, AD5592R_REG_GPIO_IN_EN,
				AD5592R_GPIO_READBACK_EN | st->gpio_in);
	if (ret)
		return ret;

	ret = FUNC1(st, &st->spi_msg);
	if (ret)
		return ret;

	*value = (u8) FUNC2(st->spi_msg);

	return 0;
}