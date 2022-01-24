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
struct efa_com_mmio_read {int /*<<< orphan*/  mmio_read_timeout; scalar_t__ seq_num; TYPE_1__* read_resp; int /*<<< orphan*/  read_resp_dma_addr; int /*<<< orphan*/  lock; } ;
struct efa_com_dev {int /*<<< orphan*/  dmadev; struct efa_com_mmio_read mmio_read; } ;
struct TYPE_2__ {scalar_t__ req_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_REG_READ_TIMEOUT_US ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efa_com_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct efa_com_dev *edev)
{
	struct efa_com_mmio_read *mmio_read = &edev->mmio_read;

	FUNC2(&mmio_read->lock);
	mmio_read->read_resp =
		FUNC0(edev->dmadev, sizeof(*mmio_read->read_resp),
				   &mmio_read->read_resp_dma_addr, GFP_KERNEL);
	if (!mmio_read->read_resp)
		return -ENOMEM;

	FUNC1(edev);

	mmio_read->read_resp->req_id = 0;
	mmio_read->seq_num = 0;
	mmio_read->mmio_read_timeout = EFA_REG_READ_TIMEOUT_US;

	return 0;
}