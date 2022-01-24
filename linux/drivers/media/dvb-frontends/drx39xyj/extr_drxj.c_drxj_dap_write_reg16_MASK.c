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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_device_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (struct i2c_device_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_device_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_device_addr *dev_addr,
				       u32 addr,
				       u16 data, u32 flags)
{
	int stat = -EIO;

	/* Check param */
	if (dev_addr == NULL)
		return -EINVAL;

	if (FUNC2(addr))
		stat = FUNC1(dev_addr, addr, data);
	else
		stat = FUNC0(dev_addr,
							    addr, data, flags);

	return stat;
}