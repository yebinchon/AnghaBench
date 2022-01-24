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
typedef  int /*<<< orphan*/  u8 ;
struct i3c_master_controller {int /*<<< orphan*/  bus; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;
typedef  enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;

/* Variables and functions */
 int EINVAL ; 
 int I3C_ADDR_SLOT_I3C_DEV ; 
 int /*<<< orphan*/  I3C_BROADCAST_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_ccc_cmd_dest*) ; 
 int /*<<< orphan*/  FUNC3 (struct i3c_ccc_cmd_dest*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i3c_ccc_cmd*,int,int /*<<< orphan*/ ,struct i3c_ccc_cmd_dest*,int) ; 
 int FUNC5 (struct i3c_master_controller*,struct i3c_ccc_cmd*) ; 

__attribute__((used)) static int FUNC6(struct i3c_master_controller *master,
				    u8 addr)
{
	enum i3c_addr_slot_status addrstat;
	struct i3c_ccc_cmd_dest dest;
	struct i3c_ccc_cmd cmd;
	int ret;

	if (!master)
		return -EINVAL;

	addrstat = FUNC1(&master->bus, addr);
	if (addr != I3C_BROADCAST_ADDR && addrstat != I3C_ADDR_SLOT_I3C_DEV)
		return -EINVAL;

	FUNC3(&dest, addr, 0);
	FUNC4(&cmd, false,
			 FUNC0(addr == I3C_BROADCAST_ADDR),
			 &dest, 1);
	ret = FUNC5(master, &cmd);
	FUNC2(&dest);

	return ret;
}