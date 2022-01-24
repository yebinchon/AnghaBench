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
typedef  int u32 ;
struct tegra_gpio_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_gpio_info*,int,int) ; 

__attribute__((used)) static void FUNC2(struct tegra_gpio_info *tgi, u32 reg,
				  unsigned int gpio, u32 value)
{
	u32 val;

	val = 0x100 << FUNC0(gpio);
	if (value)
		val |= 1 << FUNC0(gpio);
	FUNC1(tgi, val, reg);
}