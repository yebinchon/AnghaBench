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
struct isert_conn {int /*<<< orphan*/  login_req_dma; int /*<<< orphan*/  mutex; int /*<<< orphan*/  login_req_comp; TYPE_3__* conn; scalar_t__ login_req_len; TYPE_2__* device; } ;
struct iscsi_login {int /*<<< orphan*/  first_request; } ;
struct ib_wc {scalar_t__ status; scalar_t__ byte_len; TYPE_1__* qp; } ;
struct ib_device {int dummy; } ;
struct ib_cq {int dummy; } ;
struct TYPE_6__ {struct iscsi_login* conn_login; } ;
struct TYPE_5__ {struct ib_device* ib_device; } ;
struct TYPE_4__ {struct isert_conn* qp_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ ISER_HEADERS_LEN ; 
 int /*<<< orphan*/  ISER_RX_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_wc*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(struct ib_cq *cq, struct ib_wc *wc)
{
	struct isert_conn *isert_conn = wc->qp->qp_context;
	struct ib_device *ib_dev = isert_conn->device->ib_device;

	if (FUNC7(wc->status != IB_WC_SUCCESS)) {
		FUNC3(wc, "login recv");
		return;
	}

	FUNC1(ib_dev, isert_conn->login_req_dma,
			ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);

	isert_conn->login_req_len = wc->byte_len - ISER_HEADERS_LEN;

	if (isert_conn->conn) {
		struct iscsi_login *login = isert_conn->conn->conn_login;

		if (login && !login->first_request)
			FUNC4(isert_conn);
	}

	FUNC5(&isert_conn->mutex);
	FUNC0(&isert_conn->login_req_comp);
	FUNC6(&isert_conn->mutex);

	FUNC2(ib_dev, isert_conn->login_req_dma,
				ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
}