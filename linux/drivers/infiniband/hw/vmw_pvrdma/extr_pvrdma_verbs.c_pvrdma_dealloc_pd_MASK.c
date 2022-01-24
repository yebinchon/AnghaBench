#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cmd; } ;
struct pvrdma_cmd_destroy_pd {int /*<<< orphan*/  pd_handle; TYPE_2__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_destroy_pd destroy_pd; } ;
struct pvrdma_dev {int /*<<< orphan*/  num_pds; TYPE_1__* pdev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int /*<<< orphan*/  pd_handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVRDMA_CMD_DESTROY_PD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct pvrdma_dev*,union pvrdma_cmd_req*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pvrdma_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct ib_pd*) ; 

void FUNC5(struct ib_pd *pd, struct ib_udata *udata)
{
	struct pvrdma_dev *dev = FUNC3(pd->device);
	union pvrdma_cmd_req req = {};
	struct pvrdma_cmd_destroy_pd *cmd = &req.destroy_pd;
	int ret;

	cmd->hdr.cmd = PVRDMA_CMD_DESTROY_PD;
	cmd->pd_handle = FUNC4(pd)->pd_handle;

	ret = FUNC2(dev, &req, NULL, 0);
	if (ret)
		FUNC1(&dev->pdev->dev,
			 "could not dealloc protection domain, error: %d\n",
			 ret);

	FUNC0(&dev->num_pds);
}