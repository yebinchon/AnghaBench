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
typedef  union pvrdma_cmd_resp {int dummy; } pvrdma_cmd_resp ;
typedef  union pvrdma_cmd_req {int dummy; } pvrdma_cmd_req ;
struct pvrdma_dev {int /*<<< orphan*/  cmd_sema; TYPE_1__* pdev; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  cmd_slot; } ;
struct pvrdma_cmd_modify_qp {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFAULT ; 
 int /*<<< orphan*/  PVRDMA_REG_ERR ; 
 int /*<<< orphan*/  PVRDMA_REG_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,union pvrdma_cmd_req*,int) ; 
 int FUNC7 (struct pvrdma_dev*,union pvrdma_cmd_resp*,unsigned int) ; 
 int FUNC8 (struct pvrdma_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pvrdma_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int
FUNC13(struct pvrdma_dev *dev, union pvrdma_cmd_req *req,
		union pvrdma_cmd_resp *resp, unsigned resp_code)
{
	int err;

	FUNC1(&dev->pdev->dev, "post request to device\n");

	/* Serializiation */
	FUNC3(&dev->cmd_sema);

	FUNC0(sizeof(union pvrdma_cmd_req) !=
		     sizeof(struct pvrdma_cmd_modify_qp));

	FUNC10(&dev->cmd_lock);
	FUNC6(dev->cmd_slot, req, sizeof(*req));
	FUNC11(&dev->cmd_lock);

	FUNC4(&dev->cmd_done);
	FUNC9(dev, PVRDMA_REG_REQUEST, 0);

	/* Make sure the request is written before reading status. */
	FUNC5();

	err = FUNC8(dev, PVRDMA_REG_ERR);
	if (err == 0) {
		if (resp != NULL)
			err = FUNC7(dev, resp, resp_code);
	} else {
		FUNC2(&dev->pdev->dev,
			 "failed to write request error reg: %d\n", err);
		err = -EFAULT;
	}

	FUNC12(&dev->cmd_sema);

	return err;
}