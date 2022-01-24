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
struct i3c_master_controller {int dummy; } ;
struct i3c_ccc_events {int /*<<< orphan*/  events; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  I3C_BROADCAST_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_ccc_cmd_dest*) ; 
 struct i3c_ccc_events* FUNC3 (struct i3c_ccc_cmd_dest*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i3c_ccc_cmd*,int,int /*<<< orphan*/ ,struct i3c_ccc_cmd_dest*,int) ; 
 int FUNC5 (struct i3c_master_controller*,struct i3c_ccc_cmd*) ; 

__attribute__((used)) static int FUNC6(struct i3c_master_controller *master,
					u8 addr, bool enable, u8 evts)
{
	struct i3c_ccc_events *events;
	struct i3c_ccc_cmd_dest dest;
	struct i3c_ccc_cmd cmd;
	int ret;

	events = FUNC3(&dest, addr, sizeof(*events));
	if (!events)
		return -ENOMEM;

	events->events = evts;
	FUNC4(&cmd, false,
			 enable ?
			 FUNC1(addr == I3C_BROADCAST_ADDR) :
			 FUNC0(addr == I3C_BROADCAST_ADDR),
			 &dest, 1);
	ret = FUNC5(master, &cmd);
	FUNC2(&dest);

	return ret;
}