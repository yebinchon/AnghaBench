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
struct nvkm_i2c_bus {int /*<<< orphan*/  i2c; } ;
struct i2c_msg {int addr; int len; int* buf; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 

__attribute__((used)) static bool
FUNC1(struct nvkm_i2c_bus *bus, u8 addr,
		     u8 offset, u8 size, u8 *data)
{
	struct i2c_msg msgs[] = {
		{ .addr = addr, .flags = 0, .len = 1, .buf = &offset },
		{ .addr = addr, .flags = I2C_M_RD, .len = size, .buf = data, },
	};

	return FUNC0(&bus->i2c, msgs, 2) == 2;
}