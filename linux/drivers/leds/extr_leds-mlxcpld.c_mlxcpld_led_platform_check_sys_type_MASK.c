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
typedef  enum mlxcpld_led_platform_types { ____Placeholder_mlxcpld_led_platform_types } mlxcpld_led_platform_types ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DMI_PRODUCT_NAME ; 
 int MLXCPLD_LED_PLATFORM_DEFAULT ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mlx_product_names ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum
mlxcpld_led_platform_types FUNC3(void)
{
	const char *mlx_product_name;
	int i;

	mlx_product_name = FUNC1(DMI_PRODUCT_NAME);
	if (!mlx_product_name)
		return MLXCPLD_LED_PLATFORM_DEFAULT;

	for (i = 1;  i < FUNC0(mlx_product_names); i++) {
		if (FUNC2(mlx_product_name, mlx_product_names[i]))
			return i;
	}

	return MLXCPLD_LED_PLATFORM_DEFAULT;
}