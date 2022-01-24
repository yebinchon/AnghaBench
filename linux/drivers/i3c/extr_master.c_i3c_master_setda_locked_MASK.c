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
struct i3c_master_controller {int dummy; } ;
struct i3c_ccc_setda {int addr; } ;
struct i3c_ccc_cmd_dest {int dummy; } ;
struct i3c_ccc_cmd {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I3C_CCC_SETDASA ; 
 int /*<<< orphan*/  I3C_CCC_SETNEWDA ; 
 int /*<<< orphan*/  FUNC0 (struct i3c_ccc_cmd_dest*) ; 
 struct i3c_ccc_setda* FUNC1 (struct i3c_ccc_cmd_dest*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i3c_ccc_cmd*,int,int /*<<< orphan*/ ,struct i3c_ccc_cmd_dest*,int) ; 
 int FUNC3 (struct i3c_master_controller*,struct i3c_ccc_cmd*) ; 

__attribute__((used)) static int FUNC4(struct i3c_master_controller *master,
				   u8 oldaddr, u8 newaddr, bool setdasa)
{
	struct i3c_ccc_cmd_dest dest;
	struct i3c_ccc_setda *setda;
	struct i3c_ccc_cmd cmd;
	int ret;

	if (!oldaddr || !newaddr)
		return -EINVAL;

	setda = FUNC1(&dest, oldaddr, sizeof(*setda));
	if (!setda)
		return -ENOMEM;

	setda->addr = newaddr << 1;
	FUNC2(&cmd, false,
			 setdasa ? I3C_CCC_SETDASA : I3C_CCC_SETNEWDA,
			 &dest, 1);
	ret = FUNC3(master, &cmd);
	FUNC0(&dest);

	return ret;
}