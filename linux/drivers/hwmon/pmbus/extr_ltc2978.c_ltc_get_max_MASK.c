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
typedef  int u16 ;
struct ltc2978_data {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC2(struct ltc2978_data *data, struct i2c_client *client,
		       int page, int reg, u16 *pmax)
{
	int ret;

	ret = FUNC1(client, page, reg);
	if (ret >= 0) {
		if (FUNC0(ret) > FUNC0(*pmax))
			*pmax = ret;
		ret = *pmax;
	}
	return ret;
}