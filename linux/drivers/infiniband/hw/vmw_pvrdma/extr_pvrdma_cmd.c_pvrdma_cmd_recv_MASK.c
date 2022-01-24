#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int ack; } ;
union pvrdma_cmd_resp {TYPE_2__ hdr; } ;
struct pvrdma_dev {TYPE_1__* pdev; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  resp_slot; int /*<<< orphan*/  cmd_done; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PVRDMA_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (union pvrdma_cmd_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(struct pvrdma_dev *dev,
				  union pvrdma_cmd_resp *resp,
				  unsigned resp_code)
{
	int err;

	FUNC0(&dev->pdev->dev, "receive response from device\n");

	err = FUNC6(&dev->cmd_done,
			FUNC3(PVRDMA_CMD_TIMEOUT));
	if (err == 0 || err == -ERESTARTSYS) {
		FUNC1(&dev->pdev->dev,
			 "completion timeout or interrupted\n");
		return -ETIMEDOUT;
	}

	FUNC4(&dev->cmd_lock);
	FUNC2(resp, dev->resp_slot, sizeof(*resp));
	FUNC5(&dev->cmd_lock);

	if (resp->hdr.ack != resp_code) {
		FUNC1(&dev->pdev->dev,
			 "unknown response %#x expected %#x\n",
			 resp->hdr.ack, resp_code);
		return -EFAULT;
	}

	return 0;
}