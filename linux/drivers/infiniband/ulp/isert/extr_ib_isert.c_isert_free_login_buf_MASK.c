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
struct isert_conn {int /*<<< orphan*/  login_req_buf; int /*<<< orphan*/  login_req_dma; int /*<<< orphan*/  login_rsp_buf; int /*<<< orphan*/  login_rsp_dma; TYPE_1__* device; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct ib_device* ib_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ISER_RX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct isert_conn *isert_conn)
{
	struct ib_device *ib_dev = isert_conn->device->ib_device;

	FUNC0(ib_dev, isert_conn->login_rsp_dma,
			    ISER_RX_PAYLOAD_SIZE, DMA_TO_DEVICE);
	FUNC1(isert_conn->login_rsp_buf);

	FUNC0(ib_dev, isert_conn->login_req_dma,
			    ISER_RX_PAYLOAD_SIZE,
			    DMA_FROM_DEVICE);
	FUNC1(isert_conn->login_req_buf);
}