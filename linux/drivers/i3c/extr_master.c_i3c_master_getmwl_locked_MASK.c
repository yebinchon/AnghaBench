#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i3c_master_controller {int dummy; } ;
struct i3c_device_info {int /*<<< orphan*/  max_write_len; int /*<<< orphan*/  dyn_addr; } ;
struct i3c_ccc_mwl {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int len; } ;
struct i3c_ccc_cmd_dest {TYPE_1__ payload; } ;
struct i3c_ccc_cmd {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I3C_CCC_GETMWL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i3c_ccc_cmd_dest*) ; 
 struct i3c_ccc_mwl* FUNC2 (struct i3c_ccc_cmd_dest*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i3c_ccc_cmd*,int,int /*<<< orphan*/ ,struct i3c_ccc_cmd_dest*,int) ; 
 int FUNC4 (struct i3c_master_controller*,struct i3c_ccc_cmd*) ; 

__attribute__((used)) static int FUNC5(struct i3c_master_controller *master,
				    struct i3c_device_info *info)
{
	struct i3c_ccc_cmd_dest dest;
	struct i3c_ccc_mwl *mwl;
	struct i3c_ccc_cmd cmd;
	int ret;

	mwl = FUNC2(&dest, info->dyn_addr, sizeof(*mwl));
	if (!mwl)
		return -ENOMEM;

	FUNC3(&cmd, true, I3C_CCC_GETMWL, &dest, 1);
	ret = FUNC4(master, &cmd);
	if (ret)
		goto out;

	if (dest.payload.len != sizeof(*mwl)) {
		ret = -EIO;
		goto out;
	}

	info->max_write_len = FUNC0(mwl->len);

out:
	FUNC1(&dest);

	return ret;
}