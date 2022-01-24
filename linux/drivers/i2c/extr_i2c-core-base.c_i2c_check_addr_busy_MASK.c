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
 int FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_check_mux_children ; 
 int FUNC1 (struct i2c_adapter*,int) ; 
 struct i2c_adapter* FUNC2 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *adapter, int addr)
{
	struct i2c_adapter *parent = FUNC2(adapter);
	int result = 0;

	if (parent)
		result = FUNC1(parent, addr);

	if (!result)
		result = FUNC0(&adapter->dev, &addr,
						i2c_check_mux_children);

	return result;
}