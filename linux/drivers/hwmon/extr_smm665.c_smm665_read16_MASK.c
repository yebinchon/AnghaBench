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

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_client *client, int reg)
{
	int rv, val;

	rv = FUNC0(client, reg);
	if (rv < 0)
		return rv;
	val = rv << 8;
	rv = FUNC0(client, reg + 1);
	if (rv < 0)
		return rv;
	val |= rv;
	return val;
}