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
struct i2c_client {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MLX90614_CONFIG ; 
 int MLX90614_CONFIG_FIR_MASK ; 
 int MLX90614_CONFIG_FIR_SHIFT ; 
 int MLX90614_CONFIG_IIR_MASK ; 
 int MLX90614_CONFIG_IIR_SHIFT ; 
 int MLX90614_CONST_FIR ; 
 int FUNC1 (struct i2c_client const*,int /*<<< orphan*/ ) ; 
 int* mlx90614_iir_values ; 
 int FUNC2 (struct i2c_client const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline s32 FUNC3(const struct i2c_client *client,
				      int value)
{
	int i;
	s32 ret;

	for (i = 0; i < FUNC0(mlx90614_iir_values); ++i) {
		if (value == mlx90614_iir_values[i])
			break;
	}

	if (i == FUNC0(mlx90614_iir_values))
		return -EINVAL;

	/*
	 * CONFIG register values must not be changed so
	 * we must read them before we actually write
	 * changes
	 */
	ret = FUNC1(client, MLX90614_CONFIG);
	if (ret < 0)
		return ret;

	ret &= ~MLX90614_CONFIG_FIR_MASK;
	ret |= MLX90614_CONST_FIR << MLX90614_CONFIG_FIR_SHIFT;
	ret &= ~MLX90614_CONFIG_IIR_MASK;
	ret |= i << MLX90614_CONFIG_IIR_SHIFT;

	/* Write changed values */
	ret = FUNC2(client, MLX90614_CONFIG, ret);
	return ret;
}