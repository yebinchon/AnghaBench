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
struct i3c_ccc_cmd {scalar_t__ id; scalar_t__ rnw; } ;
struct dw_i3c_master {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ I3C_CCC_ENTDAA ; 
 int FUNC0 (struct dw_i3c_master*,struct i3c_ccc_cmd*) ; 
 int FUNC1 (struct dw_i3c_master*,struct i3c_ccc_cmd*) ; 
 struct dw_i3c_master* FUNC2 (struct i3c_master_controller*) ; 

__attribute__((used)) static int FUNC3(struct i3c_master_controller *m,
				      struct i3c_ccc_cmd *ccc)
{
	struct dw_i3c_master *master = FUNC2(m);
	int ret = 0;

	if (ccc->id == I3C_CCC_ENTDAA)
		return -EINVAL;

	if (ccc->rnw)
		ret = FUNC0(master, ccc);
	else
		ret = FUNC1(master, ccc);

	return ret;
}