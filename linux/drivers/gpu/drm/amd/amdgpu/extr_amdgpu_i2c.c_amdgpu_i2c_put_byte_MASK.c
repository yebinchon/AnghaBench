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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct amdgpu_i2c_chan {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_i2c_chan *i2c_bus,
				 u8 slave_addr,
				 u8 addr,
				 u8 val)
{
	uint8_t out_buf[2];
	struct i2c_msg msg = {
		.addr = slave_addr,
		.flags = 0,
		.len = 2,
		.buf = out_buf,
	};

	out_buf[0] = addr;
	out_buf[1] = val;

	if (FUNC1(&i2c_bus->adapter, &msg, 1) != 1)
		FUNC0("i2c 0x%02x 0x%02x write failed\n",
			  addr, val);
}