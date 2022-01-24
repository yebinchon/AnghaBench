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
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpseci_rsp_is_enabled {int /*<<< orphan*/  is_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPSECI_CMDID_IS_ENABLED ; 
 int /*<<< orphan*/  ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC3(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
		      int *en)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpseci_rsp_is_enabled *rsp_params;
	int err;

	cmd.header = FUNC1(DPSECI_CMDID_IS_ENABLED,
					  cmd_flags,
					  token);
	err = FUNC2(mc_io, &cmd);
	if (err)
		return err;

	rsp_params = (struct dpseci_rsp_is_enabled *)cmd.params;
	*en = FUNC0(rsp_params->is_enabled, ENABLE);

	return 0;
}