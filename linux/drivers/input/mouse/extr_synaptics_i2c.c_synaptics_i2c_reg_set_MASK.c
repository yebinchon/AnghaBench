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
typedef  int u8 ;
typedef  int u16 ;
struct i2c_client {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int PAGE_SEL_REG ; 
 int FUNC0 (struct i2c_client*,int,int) ; 

__attribute__((used)) static s32 FUNC1(struct i2c_client *client, u16 reg, u8 val)
{
	int ret;

	ret = FUNC0(client, PAGE_SEL_REG, reg >> 8);
	if (ret == 0)
		ret = FUNC0(client, reg & 0xff, val);

	return ret;
}