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
struct i2c_board_info {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct i2c_client*) ; 
 struct i2c_client* FUNC1 (struct i2c_adapter*,struct i2c_board_info const*) ; 

struct i2c_client *
FUNC2(struct i2c_adapter *adap, struct i2c_board_info const *info)
{
	struct i2c_client *ret;

	ret = FUNC1(adap, info);
	return FUNC0(ret) ? NULL : ret;
}