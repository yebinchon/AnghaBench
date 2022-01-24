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
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_dealloc_lkey {int rsvd_frmr; int /*<<< orphan*/  lkey; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCRDMA_CMD_DEALLOC_LKEY ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dealloc_lkey*) ; 
 struct ocrdma_dealloc_lkey* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 

int FUNC3(struct ocrdma_dev *dev, int fr_mr, u32 lkey)
{
	int status;
	struct ocrdma_dealloc_lkey *cmd;

	cmd = FUNC1(OCRDMA_CMD_DEALLOC_LKEY, sizeof(*cmd));
	if (!cmd)
		return -ENOMEM;
	cmd->lkey = lkey;
	cmd->rsvd_frmr = fr_mr ? 1 : 0;
	status = FUNC2(dev, (struct ocrdma_mqe *)cmd);

	FUNC0(cmd);
	return status;
}