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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * cmd; } ;
struct ocrdma_mqe {TYPE_1__ u; } ;
struct ocrdma_mbx_hdr {int rsvd_version; } ;
struct ocrdma_get_link_speed_rsp {int pflt_pps_ld_pnum; int res_lnk_st; } ;
struct ocrdma_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCRDMA_CMD_QUERY_NTWK_LINK_CONFIG_V1 ; 
 int OCRDMA_LINK_ST_MASK ; 
 int OCRDMA_PHY_PS_MASK ; 
 int OCRDMA_PHY_PS_SHIFT ; 
 int /*<<< orphan*/  OCRDMA_SUBSYS_COMMON ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_mqe*) ; 
 struct ocrdma_mqe* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_mbx_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 

int FUNC4(struct ocrdma_dev *dev, u8 *lnk_speed,
			      u8 *lnk_state)
{
	int status = -ENOMEM;
	struct ocrdma_get_link_speed_rsp *rsp;
	struct ocrdma_mqe *cmd;

	cmd = FUNC1(OCRDMA_CMD_QUERY_NTWK_LINK_CONFIG_V1,
				  sizeof(*cmd));
	if (!cmd)
		return status;
	FUNC2((struct ocrdma_mbx_hdr *)&cmd->u.cmd[0],
			OCRDMA_CMD_QUERY_NTWK_LINK_CONFIG_V1,
			OCRDMA_SUBSYS_COMMON, sizeof(*cmd));

	((struct ocrdma_mbx_hdr *)cmd->u.cmd)->rsvd_version = 0x1;

	status = FUNC3(dev, (struct ocrdma_mqe *)cmd);
	if (status)
		goto mbx_err;

	rsp = (struct ocrdma_get_link_speed_rsp *)cmd;
	if (lnk_speed)
		*lnk_speed = (rsp->pflt_pps_ld_pnum & OCRDMA_PHY_PS_MASK)
			      >> OCRDMA_PHY_PS_SHIFT;
	if (lnk_state)
		*lnk_state = (rsp->res_lnk_st & OCRDMA_LINK_ST_MASK);

mbx_err:
	FUNC0(cmd);
	return status;
}