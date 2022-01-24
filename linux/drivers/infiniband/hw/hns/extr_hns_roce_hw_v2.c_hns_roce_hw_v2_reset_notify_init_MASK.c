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
struct TYPE_4__ {void* reset_state; int /*<<< orphan*/  state; } ;
struct hnae3_handle {TYPE_2__ rinfo; int /*<<< orphan*/ * priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_RST_DIRECT_RETURN ; 
 void* HNS_ROCE_STATE_RST_INIT ; 
 void* HNS_ROCE_STATE_RST_INITED ; 
 int FUNC0 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hnae3_handle *handle)
{
	struct device *dev = &handle->pdev->dev;
	int ret;

	if (FUNC3(HNS_ROCE_RST_DIRECT_RETURN,
			       &handle->rinfo.state)) {
		handle->rinfo.reset_state = HNS_ROCE_STATE_RST_INITED;
		return 0;
	}

	handle->rinfo.reset_state = HNS_ROCE_STATE_RST_INIT;

	FUNC2(&handle->pdev->dev, "In reset process RoCE client reinit.\n");
	ret = FUNC0(handle);
	if (ret) {
		/* when reset notify type is HNAE3_INIT_CLIENT In reset notify
		 * callback function, RoCE Engine reinitialize. If RoCE reinit
		 * failed, we should inform NIC driver.
		 */
		handle->priv = NULL;
		FUNC1(dev, "In reset process RoCE reinit failed %d.\n", ret);
	} else {
		handle->rinfo.reset_state = HNS_ROCE_STATE_RST_INITED;
		FUNC2(dev, "Reset done, RoCE client reinit finished.\n");
	}

	return ret;
}