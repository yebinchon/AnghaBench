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
typedef  int u32 ;
struct isert_device {TYPE_1__* pd; struct ib_device* ib_device; } ;
struct iser_tx_desc {int num_sge; struct ib_sge* tx_sg; int /*<<< orphan*/  iscsi_header; } ;
struct isert_conn {int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; struct isert_device* device; int /*<<< orphan*/  login_rsp_dma; int /*<<< orphan*/ * login_rsp_buf; struct iser_tx_desc login_tx_desc; } ;
struct iscsi_login {scalar_t__ login_complete; int /*<<< orphan*/  login_failed; int /*<<< orphan*/ * rsp_buf; int /*<<< orphan*/ * rsp; } ;
struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct ib_sge {int length; int /*<<< orphan*/  lkey; int /*<<< orphan*/  addr; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  local_dma_lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ISERT_QP_MAX_RECV_DTOS ; 
 int /*<<< orphan*/  ISER_CONN_FULL_FEATURE ; 
 int /*<<< orphan*/  FUNC0 (struct isert_device*,struct iser_tx_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct isert_conn*,struct iser_tx_desc*) ; 
 int FUNC5 (struct isert_conn*) ; 
 int FUNC6 (struct isert_conn*,struct iser_tx_desc*) ; 
 int FUNC7 (struct isert_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct iscsi_conn *conn, struct iscsi_login *login,
		   u32 length)
{
	struct isert_conn *isert_conn = conn->context;
	struct isert_device *device = isert_conn->device;
	struct ib_device *ib_dev = device->ib_device;
	struct iser_tx_desc *tx_desc = &isert_conn->login_tx_desc;
	int ret;

	FUNC0(device, tx_desc);

	FUNC8(&tx_desc->iscsi_header, &login->rsp[0],
	       sizeof(struct iscsi_hdr));

	FUNC4(isert_conn, tx_desc);

	if (length > 0) {
		struct ib_sge *tx_dsg = &tx_desc->tx_sg[1];

		FUNC1(ib_dev, isert_conn->login_rsp_dma,
					   length, DMA_TO_DEVICE);

		FUNC8(isert_conn->login_rsp_buf, login->rsp_buf, length);

		FUNC2(ib_dev, isert_conn->login_rsp_dma,
					      length, DMA_TO_DEVICE);

		tx_dsg->addr	= isert_conn->login_rsp_dma;
		tx_dsg->length	= length;
		tx_dsg->lkey	= isert_conn->device->pd->local_dma_lkey;
		tx_desc->num_sge = 2;
	}
	if (!login->login_failed) {
		if (login->login_complete) {
			ret = FUNC3(isert_conn);
			if (ret)
				return ret;

			ret = FUNC7(isert_conn,
					       ISERT_QP_MAX_RECV_DTOS);
			if (ret)
				return ret;

			/* Now we are in FULL_FEATURE phase */
			FUNC9(&isert_conn->mutex);
			isert_conn->state = ISER_CONN_FULL_FEATURE;
			FUNC10(&isert_conn->mutex);
			goto post_send;
		}

		ret = FUNC5(isert_conn);
		if (ret)
			return ret;
	}
post_send:
	ret = FUNC6(isert_conn, tx_desc);
	if (ret)
		return ret;

	return 0;
}