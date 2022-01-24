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
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __i2c_check_addr_busy ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 struct i2c_adapter* FUNC1 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adapter, int addr)
{
	struct i2c_adapter *parent = FUNC1(adapter);
	int result;

	result = FUNC0(&adapter->dev, &addr,
					__i2c_check_addr_busy);

	if (!result && parent)
		result = FUNC2(parent, addr);

	return result;
}