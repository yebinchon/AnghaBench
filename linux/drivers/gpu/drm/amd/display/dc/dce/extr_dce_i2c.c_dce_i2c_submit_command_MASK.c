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
struct resource_pool {int dummy; } ;
struct i2c_command {int dummy; } ;
struct ddc {int dummy; } ;
struct dce_i2c_sw {int dummy; } ;
struct dce_i2c_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct dce_i2c_hw* FUNC1 (struct resource_pool*,struct ddc*) ; 
 struct dce_i2c_sw* FUNC2 (struct resource_pool*,struct ddc*) ; 
 int FUNC3 (struct resource_pool*,struct ddc*,struct i2c_command*,struct dce_i2c_hw*) ; 
 int FUNC4 (struct resource_pool*,struct ddc*,struct i2c_command*,struct dce_i2c_sw*) ; 

bool FUNC5(
	struct resource_pool *pool,
	struct ddc *ddc,
	struct i2c_command *cmd)
{
	struct dce_i2c_hw *dce_i2c_hw;
	struct dce_i2c_sw *dce_i2c_sw;

	if (!ddc) {
		FUNC0();
		return false;
	}

	if (!cmd) {
		FUNC0();
		return false;
	}

	/* The software engine is only available on dce8 */
	dce_i2c_sw = FUNC2(pool, ddc);

	if (!dce_i2c_sw) {
		dce_i2c_hw = FUNC1(pool, ddc);

		if (!dce_i2c_hw)
			return false;

		return FUNC3(pool, ddc, cmd, dce_i2c_hw);
	}

	return FUNC4(pool, ddc, cmd, dce_i2c_sw);

}