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
struct ocrdma_pd {int /*<<< orphan*/  id; } ;
struct ocrdma_mqe {int dummy; } ;
struct ocrdma_dev {int dummy; } ;
struct ocrdma_dealloc_pd {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  OCRDMA_CMD_DEALLOC_PD ; 
 int /*<<< orphan*/  FUNC0 (struct ocrdma_dealloc_pd*) ; 
 struct ocrdma_dealloc_pd* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 

int FUNC3(struct ocrdma_dev *dev, struct ocrdma_pd *pd)
{
	int status = -ENOMEM;
	struct ocrdma_dealloc_pd *cmd;

	cmd = FUNC1(OCRDMA_CMD_DEALLOC_PD, sizeof(*cmd));
	if (!cmd)
		return status;
	cmd->id = pd->id;
	status = FUNC2(dev, (struct ocrdma_mqe *)cmd);
	FUNC0(cmd);
	return status;
}