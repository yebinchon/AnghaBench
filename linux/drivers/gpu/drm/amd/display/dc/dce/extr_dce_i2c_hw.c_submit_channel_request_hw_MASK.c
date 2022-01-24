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
struct i2c_request_transaction_data {int /*<<< orphan*/  status; } ;
struct dce_i2c_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_CHANNEL_OPERATION_ENGINE_BUSY ; 
 int /*<<< orphan*/  I2C_CHANNEL_OPERATION_SUCCEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct dce_i2c_hw*) ; 
 scalar_t__ FUNC1 (struct dce_i2c_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce_i2c_hw*,struct i2c_request_transaction_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct dce_i2c_hw*) ; 

__attribute__((used)) static void FUNC4(
	struct dce_i2c_hw *dce_i2c_hw,
	struct i2c_request_transaction_data *request)
{
	request->status = I2C_CHANNEL_OPERATION_SUCCEEDED;

	if (!FUNC2(dce_i2c_hw, request))
		return;

	if (FUNC1(dce_i2c_hw)) {
		request->status = I2C_CHANNEL_OPERATION_ENGINE_BUSY;
		return;
	}
	FUNC3(dce_i2c_hw);

	FUNC0(dce_i2c_hw);


}