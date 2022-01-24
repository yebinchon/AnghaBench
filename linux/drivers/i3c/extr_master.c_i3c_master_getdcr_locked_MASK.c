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
struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int /*<<< orphan*/  dcr; int /*<<< orphan*/  dyn_addr; } ;
struct i3c_ccc_getdcr {int /*<<< orphan*/  dcr; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  I3C_CCC_GETDCR ; 
 int /*<<< orphan*/  FUNC0 (struct i3c_ccc_cmd_dest*) ; 
 struct i3c_ccc_getdcr* FUNC1 (struct i3c_ccc_cmd_dest*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_ccc_cmd*,int,int /*<<< orphan*/ ,struct i3c_ccc_cmd_dest*,int) ; 
 int FUNC3 (struct i3c_master_controller*,struct i3c_ccc_cmd*) ; 

__attribute__((used)) static int FUNC4(struct i3c_master_controller *master,
				    struct i3c_device_info *info)
{
	struct i3c_ccc_getdcr *getdcr;
	struct i3c_ccc_cmd_dest dest;
	struct i3c_ccc_cmd cmd;
	int ret;

	getdcr = FUNC1(&dest, info->dyn_addr, sizeof(*getdcr));
	if (!getdcr)
		return -ENOMEM;

	FUNC2(&cmd, true, I3C_CCC_GETDCR, &dest, 1);
	ret = FUNC3(master, &cmd);
	if (ret)
		goto out;

	info->dcr = getdcr->dcr;

out:
	FUNC0(&dest);

	return ret;
}