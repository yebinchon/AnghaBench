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
struct mcp3021_data {int dummy; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct mcp3021_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*) ; 
 int FUNC2 (char*,char*,int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 
 int FUNC4 (struct mcp3021_data*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	struct i2c_client *client = FUNC3(dev);
	struct mcp3021_data *data = FUNC0(client);
	int reg, in_input;

	reg = FUNC1(client);
	if (reg < 0)
		return reg;

	in_input = FUNC4(data, reg);

	return FUNC2(buf, "%d\n", in_input);
}